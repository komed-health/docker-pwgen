FROM alpine:3.11

RUN apk add pwgen

COPY entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ] 
