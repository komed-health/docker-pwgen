FROM alpine
RUN apk add pwgen
COPY entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ] 
