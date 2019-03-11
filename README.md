![Redis 4.0.x](https://img.shields.io/badge/Redis-4.0.x-green.svg)
![Redis 3.2.x](https://img.shields.io/badge/Redis-3.2.x-green.svg)

![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)


# Redis Docker Container for Gearbox
This is the repository for the [Redis](https://redis.io/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/gearbox).
It currently provides versions 3.2.x 4.0.x


## Supported tags and respective Dockerfiles

`4.0.9`, `4.0`, `latest` _([4.0.9/Dockerfile](https://github.com/gearboxworks/redis-docker/blob/master/4.0.9/Dockerfile))_

`3.2.11`, `3.2` _([3.2.11/Dockerfile](https://github.com/gearboxworks/redis-docker/blob/master/3.2.11/Dockerfile))_


## Using this container.
If you want to use this container as part of Gearbox, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.


## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/gearbox/redis/]

(Docker Cloud repo)[https://cloud.docker.com/swarm/gearbox/repository/docker/gearbox/redis/]


### Setup from Docker Hub
A simple `docker pull gearbox/redis` will pull down the latest version.


### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name redis-4.0.9 --restart unless-stopped --network gearboxnet -p 6379:6379  gearbox/redis:4.0.9`

stop - Stop a Docker container.

`docker stop redis-4.0.9`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name redis-4.0.9 --network gearboxnet -p 6379:6379  gearbox/redis:4.0.9`

shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name redis-4.0.9 -i -t --network gearboxnet -p 6379:6379  gearbox/redis:4.0.9 /bin/bash`

rm - Remove the Docker container.

`docker container rm redis-4.0.9`


## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/redis-docker.git`


### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.


`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.


`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.


`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.


`make stop` - Stop a Docker container.


`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.


`make shell` - Run a shell, (/bin/bash), within a Docker container.


`make rm` - Remove the Docker container.


`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


