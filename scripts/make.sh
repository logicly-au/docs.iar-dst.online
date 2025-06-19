#!/usr/bin/env bash

# Exit if anything errors
set -euo pipefail

export INDEX="file:///$(pwd)/docs/build/html/index.html"

pushd .
cd docs

# shellcheck disable=SC2034
GIT_VERSION=$(git describe --tags --always)

echo "Building HTML document ... "

docker compose --progress=quiet run --build --rm sphinx make html

echo "Done: Building HTML document - ${INDEX}"

open "${INDEX}"

popd

echo "Done"

