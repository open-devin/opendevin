#!/usr/bin/bash
set -eo pipefail

# Debug information
echo "=== Build Script Debug Information ==="
echo "Image name: $image_name"
echo "Push flag: $push"
echo "Current directory: $(pwd)"
echo "Docker version: $(docker --version)"
echo "Docker buildx version: $(docker buildx version)"
echo "========================================"

image_name=$1
push=0
if [[ $2 == "--push" ]]; then
  push=1
fi

echo "Building: $image_name"
tags=(latest)
if [[ -n $GITHUB_REF_NAME ]]; then
  # check if ref name is a version number
  if [[ $GITHUB_REF_NAME =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    major_version=$(echo $GITHUB_REF_NAME | cut -d. -f1)
    minor_version=$(echo $GITHUB_REF_NAME | cut -d. -f1,2)
    tags+=($major_version $minor_version)
  fi
  sanitized=$(echo $GITHUB_REF_NAME | sed 's/[^a-zA-Z0-9.-]\+/-/g')
  tags+=($sanitized)
fi
echo "Tags: ${tags[@]}"

dir=./containers/$image_name
if [ ! -f $dir/Dockerfile ]; then
  echo "No Dockerfile found at $dir/Dockerfile"
  exit 1
fi
if [ ! -f $dir/config.sh ]; then
  echo "No config.sh found for Dockerfile at $dir/config.sh"
  exit 1
fi
source $dir/config.sh
echo "Repo: $DOCKER_REPOSITORY"
echo "Base dir: $DOCKER_BASE_DIR"

# Convert to absolute paths
abs_dir=$(realpath $dir)
abs_base_dir=$(realpath $DOCKER_BASE_DIR)
echo "Absolute Dockerfile path: $abs_dir/Dockerfile"
echo "Absolute build context: $abs_base_dir"
#docker pull $DOCKER_REPOSITORY:main || true # try to get any cached layers
args=""
for tag in ${tags[@]}; do
  args+=" -t $DOCKER_REPOSITORY:$tag"
done
if [[ $push -eq 1 ]]; then
  args+=" --push"
fi

# Ensure buildx is available and set up for multi-platform builds
docker buildx version || exit 1

# Use the builder already configured in GitHub Actions workflow
echo "Using current buildx builder configuration"

# Use single platform for evaluation image due to complex dependencies
if [[ "$image_name" == "evaluation" ]]; then
  platforms="linux/amd64"
else
  platforms="linux/amd64,linux/arm64"
fi
echo "Platforms: $platforms"

echo "Starting Docker build with args: $args"
echo "Building from directory: $abs_base_dir"
echo "Using Dockerfile: $abs_dir/Dockerfile"

# First ensure the repository exists
echo "Checking repository access..."
echo $DOCKER_REPOSITORY

# Test authentication
docker pull $DOCKER_REPOSITORY:latest || echo "Repository may not exist yet, continuing..."

if docker buildx build \
  $args \
  --platform $platforms \
  -f $abs_dir/Dockerfile $abs_base_dir; then
  echo "Docker build completed successfully"
else
  echo "Docker build failed with exit code: $?"
  echo "Attempting to build with single platform for debugging..."
  if docker buildx build \
    $args \
    --platform linux/amd64 \
    -f $abs_dir/Dockerfile $abs_base_dir; then
    echo "Single platform build succeeded, multi-platform issue detected"
  else
    echo "Even single platform build failed"
  fi
  exit 1
fi
