# Use existing docker image as a base

FROM ubuntu:18.04 

# Download and install a dependency

RUN apt-get update \
    && apt-get -y install \
    python3 python3-pip

# Add files to Docker image

COPY ./app app

# Tell image what it needs to do when it starts as a container

CMD ["python3.6", "app/app.py"]
