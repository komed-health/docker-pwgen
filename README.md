# docker-pwgen

This is a secure container to run (pwgen)[https://linux.die.net/man/1/pwgen]. We created our own in order to be able to control the contents, since we use this for security-sensitive purposes.

The container will check to make sure that a good source of entropy is available to the container, and exit with an error otherwise.

# Usages

Bash script example to generate a 20 character long password:
```sh
#/bin/bash

declare PWGEN_CMD="docker run komed/pwgen"

declare PW=$($PWGEN_CMD 20)

echo $PW
```


Example to generate a 20 character long password in terminal:
```
$ docker run komed/pwgen 20
```

# How to do releases

- Tag new version like `v1.0.0`
- This will trigger a new build at https://hub.docker.com/repository/docker/komed/pwgen
- After build is finished re-tag the new version to docker image `latest` -> `docker tag komed/pwgen:version-1.0.0 komed/pwgen:latest`
- Push latest docker image: `docker push komed/pwgen:latest`
