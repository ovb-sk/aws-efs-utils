#!/bin/bash

# Clone only the specific tag
echo "Building AWS EFS Utils version: ${INPUT_VERSION}"
git clone --depth 1 --branch "v${INPUT_VERSION}" https://github.com/aws/efs-utils && cd efs-utils

# Build RPMs
make rpm

# Copy RPMs to GitHub workspace so they persist after Docker container exits
OUTPUT_DIR="${GITHUB_WORKSPACE}/rpms-output"
mkdir -p "$OUTPUT_DIR"
cp -v build/rpmbuild/RPMS/x86_64/*.rpm "$OUTPUT_DIR/"
echo "RPMs copied to: $OUTPUT_DIR"
