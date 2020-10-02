![release](https://github.com/komed-health/docker-pwgen/workflows/release/badge.svg)

# docker-pwgen

This is a secure container to run [pwgen](https://linux.die.net/man/1/pwgen). We created our own in order to be able to control the contents, since we use this for security-sensitive purposes.

The container will check to make sure that a good source of entropy is available to the container, and exit with an error otherwise.

# Usages

## Generate a 20 character long password in terminal

```console
$ docker run komed/pwgen 20
```

<br/>

## Bash script to generate a 20 character long password

```sh
#/bin/bash

declare PWGEN_CMD="docker run komed/pwgen"

declare PW=$($PWGEN_CMD 20)

echo $PW
```

# Release new version

❗️This project follows [Semantic Versioning](https://semver.org/)❗️

This is our process to release a new version:

1. Go to [the release page](https://github.com/komed-health/docker-pwgen/releases) and create a new release e.g. `1.0.0`.
1. Write down couple of sentences in the release description.

That's it 🎉
