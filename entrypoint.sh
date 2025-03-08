#!/bin/bash
set -e

# Start SSH service (required for Hadoop)
service ssh start

# Handle container command
case "$1" in
  namenode)
    echo "Starting NameNode..."
    if [ ! -d "/tmp/hadoop-root/dfs/name/current" ]; then
      echo "Formatting NameNode as it’s not formatted yet..."
      hdfs namenode -format
    fi
    hdfs namenode
    ;;
  datanode)
    echo "Starting DataNode..."
    hdfs datanode
    ;;
  resourcemanager)
    echo "Starting ResourceManager..."
    yarn resourcemanager
    ;;
  nodemanager)
    echo "Starting NodeManager..."
    yarn nodemanager
    ;;
  historyserver)
    echo "Starting JobHistory Server..."
    mapred --daemon start historyserver
    tail -f /dev/null
    ;;
  *)
    exec "$@"
    ;;
esac
