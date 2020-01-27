FROM ubuntu:latest
RUN apk add --update --upgrade --no-cache bash git jq openssh-client
ADD src /opt/resource
RUN chmod +x /opt/resource/*
WORKDIR /
ENTRYPOINT ["/bin/bash"]