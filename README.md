# docker_temp_env

Create disposable blank containers with SSH access. Useful for testing remote configuration with e.g. Ansible.

## Setup

To create the image locally, run

```
docker build -t env .
```

## Run

To start a container with this image, run

```
docker run -dt -p 22:22 --rm --name my_container env 
```

Note that you can't have anything running in port 22 in your host machine.

## Usage

If the container was created successfully, you can access it by just SSH'ing:

```
ssh alpine@localhost
```

## Stop and cleanup

To stop the container, run the command below:

```
docker container stop my_container
```

As we started it with the `--rm` flag, it will be deleted automatically after stopping.
