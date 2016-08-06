#!/bin/bash

here=$(cd `dirname $0`;pwd)


docker run -itd -v $here/conf:/etc/bind   --name="dns" 8036680/dns-bind9:latest /bin/bash

docker exec dns bash -c "/etc/init.d/bind9 start"
