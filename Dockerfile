FROM arm32v7/openjdk:8

# Add qemu bin
COPY ./qemu-arm-static /usr/bin/qemu-arm-static

RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates \
    curl \
    netcat \
    wget \
 && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /opt/openjdk
ENV PATH $JAVA_HOME/bin:$PATH

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

# Remove qemu bin
# RUN rm /usr/bin/qemu-arm-static
