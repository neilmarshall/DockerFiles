PH=$(echo 'password' | docker run --rm -i datalust/seq config hash)

docker run \
    --name seq \
    -d \
    --restart unless-stopped \
    -e ACCEPT_EULA=Y \
    -e SEQ_FIRSTRUN_ADMINPASSWORDHASH="$PH" \
    -v seq:/data \
    -p 9001:80 \
    -p 5341:5341 \
    datalust/seq
