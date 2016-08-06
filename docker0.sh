#!/bin/bash
docker0=$(ifconfig docker0 | awk '/inet addr:/{print $2}'|awk -F: '{print $2}')
echo $docker0

