#!/bin/bash

here=$(cd `dirname $0`;pwd)

nimbus=1.storm.com

supervisors=(2.storm.com 3.storm.com 4.storm.com)

image=8036680/storm-1.0.1

dcoker0=$(sh ${here}/../docker0.sh)

function GetIP(){
   $here/../resolvIP.sh $1
}


if [ "$( sudo docker ps -a | sed -n  "/storm-nimbus/p" )"c != ""c ];then
     docker rm -f storm-nimbus 1>/dev/null;
  fi


docker run -itd --net=none -v ${here}/mount:/host-mount -v ${here}/conf:/usr/apache-storm-1.0.1/conf -h "$nimbus"   --name=storm-nimbus ${image} /bin/bash

$here/../set_dns.sh storm-nimbus

pipework docker0 storm-nimbus $(GetIP $nimbus)/16@$docker0


docker exec -d storm-nimbus bash -c "/usr/apache-storm-1.0.1/bin/storm nimbus"
docker exec -d storm-nimbus bash -c "/usr/apache-storm-1.0.1/bin/storm ui"



for it in ${supervisors[@]} 
do
  name=storm-$it

  if [ "$( sudo docker ps -a | sed -n  "/${name}/p" )"c != ""c ];then
     docker rm -f  ${name} 1>/dev/null;
  fi
 
  docker run -itd --net=none -v ${here}/conf:/usr/apache-storm-1.0.1/conf -h "$it"  --name=$name ${image} /bin/bash
  
  $here/../set_dns.sh $name

  pipework docker0 $name  $(GetIP $it)/16@$docker0

  docker exec -d $name bash -c "/usr/apache-storm-1.0.1/bin/storm supervisor"
   

done
