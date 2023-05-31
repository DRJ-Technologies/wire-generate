FROM golang:1.17

# Download and install Google Wire
RUN go install github.com/google/wire/cmd/wire@latest

# Copy the source from the current directory to the Working Directory inside the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Run the command on container startup
ENTRYPOINT ["/entrypoint.sh"]
