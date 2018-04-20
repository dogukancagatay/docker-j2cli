# docker-j2cli

j2cli executable as a Docker image.

## Usage

In order to use it you need to map ``j2`` files as volumes.

```sh
docker run --rm -it -v ./config.j2:/config.j2 dcagatay/j2cli /config.j2
```

Environment variables can be injected with env file or as environment variables while running docker run.

```sh
env > /tmp/current.env
docker run --env-file /tmp/current.env --rm -it -v ./config.j2:/config.j2 dcagatay/j2cli /config.j2
```
