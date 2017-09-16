### Building
docker build -t npflan/unbound:latest .

### Running

Use this command to start the container. Unbound will listen on port 53/udp.

docker run --name unbound -d -p 53:53/udp -p 53:53 --env-file unbound_env npflan/unbound:latest
