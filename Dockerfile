# Use existing docker image as a base

FROM ubuntu:18.04 

# Download and install a dependency

RUN apt-get update

# Tell image what it needs to do when it starts as a container

CMD echo "test"
