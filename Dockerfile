FROM alpine:latest

COPY ./start.sh /opt/start.sh
RUN apk add --update rethinkdb && rm -rf /var/cache/apk/* && chmod +x /opt/start.sh
VOLUME /data
EXPOSE 28015 29015 8080
WORKDIR /opt
CMD /opt/start.sh