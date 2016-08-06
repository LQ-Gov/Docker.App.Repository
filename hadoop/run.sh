#!/bin/bash

image=8036680/hadoop

here=$(cd `dirname $0`;pwd)
master=172.17.1.1/16
slaves=(172.17.1.2/16 172.17.1.3/16 172.17.1.4/16)
conf=${here}/conf
hadoop=hadoop-2.7.2
docker0=$(sh ${here}/../docker0.sh)

function create_rsa_key()
{
   docker exec -d  $1 bash -c "mkdir ~/.ssh"
   docker exec -d $1 bash -c 'ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa'
   docker exec -d $1 bash -c 'echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config'
   docker exec  $1 bash -c 'echo "UserKnownHostsFile /dev/null"'
   docker exec  $1 bash -c "/etc/init.d/ssh start"
}

function create_authorized_keys()
{
  docker exec $1 bash -c "touch ~/.ssh/authorized_keys"
  docker exec $1 bash -c "chmod 600 ~/.ssh/authorized_keys"
#  docker exec $1 bash -c "echo $(cat ../xshell-key.pub) >> ~/.ssh/authorized_keys"
}


function write_config_and_dns()
{
  config_path=${here}/mount/hadoop-2.7.2/etc/hadoop/
  container_config_path=/usr/hadoop-2.7.2/etc/hadoop/
    

#  docker exec $1 bash -c "echo '$(cat ${config_path}core-site.xml)' > ${container_config_path}core-site.xml"
#  docker exec $1 bash -c "echo '$(cat ${config_path}hdfs-site.xml)' > ${container_config_path}hdfs-site.xml"
#  docker exec $1 bash -c "echo '$(cat ${config_path}mapred-site.xml)' > ${container_config_path}mapred-site.xml"
#  docker exec $1 bash -c "echo '$(cat ${config_path}yarn-site.xml)' > ${container_config_path}yarn-site.xml"
#  docker exec $1 bash -c "echo '$(cat ${config_path}slaves)' > ${container_config_path}slaves"

  docker exec $1 bash -c 'sed -i -e "s/\${JAVA_HOME}/${JAVA_HOME////\\/}/g" '${container_config_path}hadoop-env.sh
  docker exec $1 bash -c "echo ${2%/*}"'       $(hostname) >> /etc/hosts'

#  old=$(docker exec $1 bash -c "cat /etc/resolv.conf")
  docker exec $1 bash -c "echo 'nameserver 172.17.0.2' > /etc/resolv.conf"
#  docker exec $1 bash -c "echo '$old' >> /etc/resolv.conf"

}


#build hadoop-master
if [ "$( docker ps -a | sed -n  "/hadoop-master/p" )"c != ""c ];then
     docker stop hadoop-master 1>/dev/null;
     docker rm hadoop-master 1>/dev/null;
fi


docker run -itd --net=none -v ${here}/mount:/host-mount -v ${conf}:/usr/hadoop-2.7.2/etc/hadoop  -h "1.hadoop.com" --name=hadoop-master ${image} /bin/bash

pipework docker0 hadoop-master ${master}@${docker0}

create_rsa_key hadoop-master
create_authorized_keys hadoop-master
write_config_and_dns hadoop-master $master

docker exec hadoop-master bash -c "echo $master"

master_rsa_pub=$(docker exec hadoop-master bash -c "cat ~/.ssh/id_rsa.pub")

docker exec hadoop-master bash -c "echo '${master_rsa_pub}' >> ~/.ssh/authorized_keys"
#build hadoop-slave1

for((i=0;i<${#slaves[@]};i++)) 
do 
slave=${slaves[$i]}
name=hadoop-slave${slave//[\.|\/]/_}

if [ "$( sudo docker ps -a | sed -n  "/${name}/p" )"c != ""c ];then
     docker stop ${name} 1>/dev/null;
     docker rm ${name} 1>/dev/null;
fi

docker run -itd --net=none -v ${here}/mount:/host-mount -v ${conf}:/usr/hadoop-2.7.2/etc/hadoop -h "$(expr $i + 2).hadoop.com"  --name=${name} ${image} /bin/bash

pipework docker0 ${name} ${slave}@${docker0}

create_rsa_key ${name}
create_authorized_keys ${name}
write_config_and_dns ${name} ${slaves[$i]} 

#write to authorized_keys
slave_rsa_pub=$(docker exec $name bash -c "cat ~/.ssh/id_rsa.pub")


docker exec $name bash -c "echo '${master_rsa_pub}' >>~/.ssh/authorized_keys"
docker exec hadoop-master bash -c "echo '${slave_rsa_pub}'  >>~/.ssh/authorized_keys"
docker exec hadoop-master bash -c "echo '${slave%/*}          $(docker ps -lq)'  >> /etc/hosts"
done
   

docker exec hadoop-master  bash -c "cd /usr/hadoop-2.7.2 && bin/hadoop namenode -format"
docker exec hadoop-master  bash -c "cd /usr/hadoop-2.7.2 && sbin/start-all.sh"



