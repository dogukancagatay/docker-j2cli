# dcagatay/j2cli

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/dcagatay/j2cli)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/dcagatay/j2cli)
![MicroBadger Size](https://img.shields.io/microbadger/image-size/dcagatay/j2cli)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/dcagatay/j2cli)
![Docker Pulls](https://img.shields.io/docker/pulls/dcagatay/j2cli)

j2cli executable as a Docker image.

Available Tags:
- [``0.3.10``](https://github.com/dogukancagatay/docker-j2cli/blob/0.3.10/Dockerfile), [``latest``](https://github.com/dogukancagatay/docker-j2cli/blob/master/Dockerfile)

## Usage

In order to use it you need to map ``j2`` files or directories containing ``j2`` files and data files as volumes.

```sh
docker run --rm -it -v "$PWD:/app" dcagatay/j2cli config.j2 data.json
```

Environment variables can be injected with env file or as environment variables while running docker run.

```sh
env > /tmp/current.env
docker run --env-file /tmp/current.env --rm -it -v "$PWD:/app" dcagatay/j2cli config.j2
```

```sh
docker run -e "AN_ENV_VAR=with-value" --rm -it -v "$PWD:/app" dcagatay/j2cli config.j2
```

For more usage examples: [kolypto/j2cli](https://github.com/kolypto/j2cli)
