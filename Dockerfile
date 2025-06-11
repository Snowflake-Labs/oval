FROM artifactory.int.snowflakecomputing.com/development-docker-virtual/rockylinux:8-minimal AS base

RUN microdnf -y install python3-pip && \
    python3 -m pip install --upgrade pip

COPY . /workdir

RUN python3 -m pip install /workdir

ENTRYPOINT ["oval"]
