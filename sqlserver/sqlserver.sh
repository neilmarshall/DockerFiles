docker container run \
    --detach \
    --env ACCEPT_EULA=Y \
    --env SA_PASSWORD=$SA_PASSWORD \
    --memory=2g \
    --name sqlserver-local \
    --publish 1433:1433 \
    --restart unless-stopped \
    --volume sqlserver-local_mssqldata:/var/opt/mssql \
    mcr.microsoft.com/mssql/server

