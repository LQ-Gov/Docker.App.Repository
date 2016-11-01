#!/bin/bash

master_count=1
worker_count=3

image=8036680/spider-storm

here=$(cd `dirname $0`;pwd)
docker0=$(sh ${here}/../docker0.sh)


master_host=172.17.4.1/16
master_port=8844

workers=(172.17.4.2/16 172.17.4.3/16)


if [ "$( docker ps -a | sed -n  "/spider-master/p" )"c != ""c ];then
     docker stop spider-master 1>/dev/null;
     docker rm spider-master 1>/dev/null;
fi


docker run -itd --net=none -v ${here}/app:/app -h "1.spider.com" --name="spider-master" ${image} /bin/bash
pipework docker0 spider-master ${master_host}@${docker0}

$here/../set_dns.sh spider-master


docker exec -d spider-master bash -c "cd /app/spider-storm && python3.5 main.py --type=master"


for((i=0;i<${#workers[@]};i++))
do
worker=${workers[$i]}
name=spider-worker${worker//[\.|\/]/_}

if [ "$( sudo docker ps -a | sed -n  "/${name}/p" )"c != ""c ];then
     docker stop ${name} 1>/dev/null;
     docker rm ${name} 1>/dev/null;
fi

docker run -itd --net=none -v ${here}/app:/app  -h "$(expr $i + 2).hadoop.com"  --name=${name} ${image} /bin/bash
pipework docker0 ${name} ${worker}@${docker0}

$here/../set_dns.sh $name

docker exec $name bash -c "cd /app/spider-storm python3.5 main.py --type=worker --params='{\"init.master.host\":\"172.17.4.1\",\"int.master.port\":8844,\"init.fetchers.count\":1}'"
done
