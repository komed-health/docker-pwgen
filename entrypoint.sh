#!/usr/bin/env ash

# entryoint.sh
# Description:
# This is the docker container entrypoint to the container to generates passwords
# Usage: entrypoint.sh length
function usage
{
    echo "Usage: `basename $0` LENGTH"
}

if [[ "$1" == "-h" ]]; then
    usage
    exit 0
fi

# Test length
if [[ -z "$1" ]]; then
    echo "No length was given, exiting" >&2
    usage
    exit 1
fi
LENGTH=$1

# test that we have a good implementation of entropy
RANDOM_GEN="/dev/random"
if [[ ! -c $RANDOM_GEN ]]; then
    echo "No cryptographically strong implementation of random, exiting" >&2
    exit 126 # anything other than 0 is a failure
fi

# generate a password
pwgen -snc1 $1
