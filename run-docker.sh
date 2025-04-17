#!/bin/bash

# Build the image if it doesn't exist or if --build flag is provided
if [[ "$1" == "--build" ]]; then
  echo "Building Docker image..."
  docker build -t r-docker .
fi

# Run the container with current directory mounted
docker run -it -v $(pwd):/app r-docker /bin/zsh
