#!/bin/bash

here=$(cd `dirname $0`;pwd)

#build hadoop-master
 if [ "$( docker ps -a | sed -n  "/dns/p" )"c != ""c ];then
      docker stop dns 1>/dev/null;
      docker rm dns 1>/dev/null;
 fi


docker run -itd -v $here/conf:/etc/bind   --name="dns" 8036680/dns-bind9:latest /bin/bash

docker exec dns bash -c "/etc/init.d/bind9 start"
