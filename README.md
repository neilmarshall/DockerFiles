# DockerFiles

A collection of shell scripts to run popular databases as services, using Docker.

## Mongo

There are no specific things to note, the container arguments should be
self-explanatory.

Note that for the `mongo` image an anonymous volume will be created (in
addition to the configured named volume) - to avoid proliferation of anonymous
volumes for unused containers pass the `-v` when calling `docker container rm`,
i.e. `docker container rm -v <container_name>`.

## SQL Server

The container arguments expect a local environment variable configured with the
SA password that will be used for the root user.
