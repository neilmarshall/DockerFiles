docker container run \
    --detach \
    --cap-add SYS_PTRACE \
    --env ACCEPT_EULA=1 \
    --env MSSQL_SA_PASSWORD=$SA_PASSWORD \
    --memory=2g \
    --name azuresqledge \
    --publish 1433:1433 \
    --restart unless-stopped \
    --volume azuresqledge_mssqldata:/var/opt/mssql \
    mcr.microsoft.com/azure-sql-edge
