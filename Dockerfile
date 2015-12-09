# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu
MAINTAINER Ziyi LIU <i@richard.zone>

RUN apt-get update && \
    apt-get install -y python-pip
RUN pip install shadowsocks

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
