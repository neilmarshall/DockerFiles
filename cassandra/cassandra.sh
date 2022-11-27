docker container run \
    --detach \
    --restart unless-stopped \
    --publish 9042:9042 \
    --volume cassandra:/etc/cassandra \
    --name cassandra \
    cassandra

