FROM alpine:3.12.0

# Connecting this docker image to GitHub Container Registry
LABEL org.opencontainers.image.source https://github.com/komed-health/docker-pwgen

RUN apk add pwgen

COPY entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ] 
