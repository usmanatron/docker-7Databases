docker-compose -f docker-hbase\docker-compose-distributed-local.yml down
docker volume rm docker-hbase_hadoop_namenode
docker volume rm docker-hbase_hadoop_datanode
docker volume rm docker-hbase_hadoop_historyserver