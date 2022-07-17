docker container run \
    --detach \
    --name mongodb-local \
    --publish 27017:27017 \
    --restart unless-stopped \
    --volume mongodb-local_data:/data/db \
    mongo

