#!/usr/bin/env bash

# Just to make the Dockerfile builds easier again

imageName="c0untzer0/pruvodce"
imageTag=${1:-latest}
pushImage=${2:-no}

set -e

echo "Building Docker image: ${imageName}:${imageTag}"
docker build \
    --force-rm \
    -t ${imageName}:${imageTag} \
    .
echo "Image built."

if [[ "${pushImage}" == "yes" ]]; then
  echo "Pushing to DockerHub..."
  docker push "${imageName}:${imageTag}"
  echo "Image pushed."
else
  echo "(Not pushing to DockerHub)"
fi
