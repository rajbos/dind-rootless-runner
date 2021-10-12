This repo contains a custom Dockerfile to create a DinD rootless image to be used with the [actions-runner-controller](https://github.com/actions-runner-controller/actions-runner-controller) project. With this setup we try to make the setup more secure, as the default one uses Docker in Docker, that is run as root.

Additions on top of the official [dind](https://hub.docker.com/layers/docker/library/docker/dind-rootless/images/sha256-75acfc77a83d9b4d557aab529432058b78ac6d629325c9d61c385cd2fc48fe7c?context=explore) image:
- Add a folder `/opt/hostedtoolcache` with the correct rights so the runner can actually start the container correctly.
