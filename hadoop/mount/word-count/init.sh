#!/bin/bash
/usr/hadoop-2.7.2/bin/hadoop fs -mkdir -p /LQ/word-count   
/usr/hadoop-2.7.2/bin/hadoop fs -chmod -R 777 /LQ  
/usr/hadoop-2.7.2/bin/hadoop fs -put /host-mount/word-count/README.txt /LQ/word-count
#/usr/hadoop-2.7.2/bin/hadoop jar hadoop-wordCount-1.0-SNAPSHOT.jar /LQ/word-count/README.txt /LQ/word-count/output/
 

