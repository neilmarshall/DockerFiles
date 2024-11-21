docker container run \
    --detach \
    --cap-add SYS_PTRACE \
    --env ACCEPT_EULA=1 \
    --env MSSQL_SA_PASSWORD=$SA_PASSWORD \
    --memory=2g \
    --name sql2022 \
    --hostname sql2022 \
    --publish 1433:1433 \
    --restart unless-stopped \
    --volume sql2022_mssqldata:/var/opt/mssql \
    mcr.microsoft.com/mssql/server:2022-latest
