# Adds git to the node + nginx container
FROM patriknyblad/nginx-nodejs:1.0.0
MAINTAINER Patrik Nyblad <patrik.nyblad@gmail.com>

# Install ssh + git
RUN apt-get -q update &&\
    DEBIAN_FRONTEND="noninteractive" apt-get -q install -y -o Dpkg::Options::="--force-confnew"  --no-install-recommends ssh &&\
    DEBIAN_FRONTEND="noninteractive" apt-get -q install -y -o Dpkg::Options::="--force-confnew"  --no-install-recommends git &&\
    apt-get -q clean -y && rm -rf /var/lib/apt/lists/* && rm -f /var/cache/apt/*.bin
