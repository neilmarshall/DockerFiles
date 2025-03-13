docker run \
    -d \
    --rm \
    --hostname my-rabbit \
    --name rabbitmq \
    -p 5672:5672 \
    -p 15672:15672 \
    -v rabbitmq_data:/var/lib/rabbitmq \
    rabbitmq:3-management