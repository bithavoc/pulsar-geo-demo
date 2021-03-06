#!/bin/bash

set -e
flag_file=init/flag
if [ -f "$flag_file" ]; then
    echo "Cluster already initialized"
    exit 0
fi

bin/pulsar initialize-cluster-metadata \
      --cluster pulsar-b \
      --zookeeper zk-b:2181 \
      --configuration-store zk-b:2181 \
      --web-service-url http://pulsar-b:8080 \
      --broker-service-url pulsar://pulsar-b:6650
echo "OK" > $flag_file
