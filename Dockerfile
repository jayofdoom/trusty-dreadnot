# Dockerfile for dreadnot suitable for production
# A suggested use: use this image as your base, then load in your own dn-stacks and run.
FROM		jayofdoom/docker-ubuntu-14.04
MAINTAINER 	Jay Faulkner <jay.faulkner@rackspace.com>

# install requirements
RUN apt-get -y update && apt-get -y install nodejs git

# Dreadnot expects node as node, not nodejs where ubuntu installs it
RUN ln -sf /usr/bin/nodejs /usr/bin/node

# Get a copy of dreadnot
RUN cd /opt && git clone http://github.com/racker/dreadnot
