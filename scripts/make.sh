#!/bin/bash

# Exit if anything errors
set -euo pipefail

pushd .
cd doc

source version.env
GIT_VERSION=$(git describe --tags --always)

echo "Building HTML"
docker compose run \
  --build \
  -e GIT_VERSION \
  --rm sphinx \
  make html

popd
