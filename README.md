# docker-pwgen

This is a Komed-controlled container to run pwgen.
We created our own in order to be able to control the
contents, since we use this for security-sensitive purposes.

It will check to make sure that a good source of entropy
is available to the container, and exit with an error
otherwise.
