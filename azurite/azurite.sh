docker container run \
    --detach \
    -p 10000:10000 \
    -p 10001:10001 \
    -p 10002:10002 \
    --memory=1g \
    --restart unless-stopped \
    --name azurite \
    mcr.microsoft.com/azure-storage/azurite

