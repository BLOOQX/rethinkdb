# rethinkdb
An alpine based RethinkDB image

## Building

```bash
docker build -t rethinkdb .

Sending build context to Docker daemon  9.728kB
Step 1/7 : FROM alpine:latest
latest: Pulling from library/alpine
8e3ba11ec2a2: Pull complete 
Digest: sha256:7043076348bf5040220df6ad703798fd8593a0918d06d3ce30c6c93be117e430
Status: Downloaded newer image for alpine:latest
 ---> 11cd0b38bc3c
Step 2/7 : COPY ./start.sh /opt/start.sh
 ---> 7c33b01c04ff
Removing intermediate container c18b6a39ecff
Step 3/7 : RUN apk add --update rethinkdb && rm -rf /var/cache/apk/* && chmod +x /opt/start.sh
 ---> Running in 406094774d6d
fetch http://dl-cdn.alpinelinux.org/alpine/v3.8/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.8/community/x86_64/APKINDEX.tar.gz
(1/9) Installing ca-certificates (20171114-r3)
(2/9) Installing nghttp2-libs (1.32.0-r0)
(3/9) Installing libssh2 (1.8.0-r3)
(4/9) Installing libcurl (7.61.0-r0)
(5/9) Installing libexecinfo (1.1-r0)
(6/9) Installing libgcc (6.4.0-r8)
(7/9) Installing libstdc++ (6.4.0-r8)
(8/9) Installing protobuf (3.5.2-r0)
(9/9) Installing rethinkdb (2.3.6-r6)
Executing rethinkdb-2.3.6-r6.pre-install
Executing busybox-1.28.4-r0.trigger
Executing ca-certificates-20171114-r3.trigger
OK: 48 MiB in 22 packages
 ---> acac639581fa
Removing intermediate container 406094774d6d
Step 4/7 : VOLUME /data
 ---> Running in 12e07532f3fb
 ---> f93809ad849d
Removing intermediate container 12e07532f3fb
Step 5/7 : EXPOSE 28015 29015 8080
 ---> Running in 93b9eebff754
 ---> d67a462e9e41
Removing intermediate container 93b9eebff754
Step 6/7 : WORKDIR /opt
 ---> b6adaada4b3d
Removing intermediate container a914190f8367
Step 7/7 : CMD /opt/start.sh
 ---> Running in ee97f7f8de8d
 ---> 8da4812b6659
Removing intermediate container ee97f7f8de8d
Successfully built 8da4812b6659
Successfully tagged rethinkdb:latest
```

## Image size

Generated image size is about 50Mb and will be configured to not to send anonymous data to RethinkDB

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
rethinkdb           latest              8da4812b6659        4 minutes ago       49.4MB
```
