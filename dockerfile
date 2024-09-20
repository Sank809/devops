# Use an official Ubuntu image as the base
FROM ubuntu:latest # Install Docker
RUN apt-get update && apt-get install -y docker.io

# Run Docker daemon
RUN systemctl enable docker
RUN systemctl start docker

# Run a Docker container
CMD ["docker", "run", "-it", "hello-world"]
docker build -t my-docker-image .
docker run -it my-docker-image 