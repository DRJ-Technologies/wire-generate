# Start from the latest golang base image
FROM golang:latest

# Download and install Google Wire
RUN go install github.com/google/wire/cmd/wire

# Copy the source from the current directory to the Working Directory inside the container
COPY entrypoint.sh /entrypoint.sh

# Run the command on container startup
ENTRYPOINT ["/entrypoint.sh"]