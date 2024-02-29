#!/bin/bash

inspector_sbomgen_dir=$1
version="${2:-latest}"
platform="${3:-amd64}"
inspector_sbomgen_bin="$inspector_sbomgen_dir/inspector-sbomgen"

mkdir -p "$inspector_sbomgen_dir"
curl "https://amazon-inspector-sbomgen.s3.amazonaws.com/$version/linux/$platform/inspector-sbomgen.zip" -O
unzip -qq -j inspector-sbomgen.zip -d "$inspector_sbomgen_dir"
rm -rf inspector-sbomgen.zip
chmod +x "$inspector_sbomgen_bin"
echo "inspector_sbomgen=$inspector_sbomgen_bin" >>"$GITHUB_ENV"
