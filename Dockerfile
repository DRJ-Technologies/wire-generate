# Start from the latest golang base image
FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# Download and install Google Wire
RUN go install github.com/google/wire/cmd/wire

# Install jq
RUN apt-get update && apt-get install -y jq

# Copy the source from the current directory to the Working Directory inside the container
COPY entrypoint.sh /entrypoint.sh

# Set execute permissions for the script
RUN chmod +x /entrypoint.sh

# Run the command on container startup
ENTRYPOINT ["/entrypoint.sh"]
