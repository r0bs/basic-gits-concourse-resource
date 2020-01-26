FROM alpine:latest
RUN apk add --update --upgrade --no-cache bash
ADD src /opt/resource
RUN chmod +x /opt/resource/*
WORKDIR /
ENTRYPOINT ["/bin/bash"]