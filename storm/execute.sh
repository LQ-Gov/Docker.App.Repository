#!/bin/bash

storm="/usr/lib/apache-storm-0.9.4/bin/storm"

topology="/usr/lib/apache-storm-0.9.4/topology/"

#sudo docker exec storm-nimbus /bin/bash -c ".$storm jar  ${topology}wordCount-0.1.jar storm.wordCount.App wordCount-base" 
#storm ����ʾ�� �汾 0.0.1
#sudo docker exec storm-nimbus /bin/bash -c ".$storm jar  ${topology}storm.base-0.0.1.jar com.iscas.lq.storm.base.App storm-base"
 
#storm ����ʾ�� �汾 0.0.2 ���� 1-�� ����
sudo docker exec storm-nimbus /bin/bash -c ".$storm jar  ${topology}storm.base-0.0.2.jar com.iscas.lq.storm.base.App storm-base"
#sudo docker exec storm-nimbus /bin/bash -c ".$storm jar  ${topology}storm.stream-0.0.1.jar com.iscas.lq.storm.stream.App storm-stream" 
