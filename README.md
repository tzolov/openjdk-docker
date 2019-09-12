# openjdk-docker

OpenJDK Docker image

```bash
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker build --platform arm -t tzolov/openjdk-arm:latest .
docker push tzolov/openjdk-arm:latest
```
