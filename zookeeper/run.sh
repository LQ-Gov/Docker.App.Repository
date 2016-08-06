#!/bin/bash

here=$(cd `dirname $0`;pwd)

conf=$(cd ./conf/;pwd;)/zoo.cfg
zookeeper=/usr/lib/zookeeper-3.5.1-alpha/
docker0=$(ifconfig docker0 | awk '/inet addr:/{print $2}'|awk -F: '{print $2}')



if [ ! -e "$conf" ]; then 
  echo $conf not exist;exit 0;
fi

function GetIP(){
   $here/../resolvIP.sh $1
}


dataDir=$( cat $conf | grep -oP '(?<=(\bdataDir=)).*' );

servers=$( cat $conf | sed -n '/^server./p' ) 


for server in $servers
do
   id=$( echo "$server" | grep -oP '(?<=server.).*(?==)' )
   ip=$( echo "$server" | grep -oP '(?<==)[\w.]+' )
   ip=$(GetIP $ip)
   name=zookeeper$id
  if [ "$( sudo docker ps -a | sed -n  "/$name/p" )"c != ""c ];then
     docker rm -f $name 1>/dev/null;
  fi
   container=$( docker run -itd --net=none -v $conf:$zookeeper/conf/zoo.cfg  --name=${name} 8036680/zookeeper /bin/bash; )
   echo $container   
   $here/../set_dns.sh $container
  
   pipework docker0 $name ${ip}/16@${docker0}

    docker exec $name mkdir -p $dataDir 
    docker exec $name  touch ${dataDir}myid
    docker exec $name bash -c "echo "$id" > ${dataDir}myid"
    
#    docker exec $name touch ${zookeeper}conf/zoo.cfg
#    for row in `cat $conf`
#    do
#      docker exec $name bash -c "echo ${row} >>${zookeeper}conf/zoo.cfg"
#    done


    docker exec $name ${zookeeper}bin/zkServer.sh start
done

