#!/bin/bash

echo "We aren't producing a PDF for this one" && exit 1

# Exit if anything errors
set -euo pipefail

pushd .
cd doc

source version.env
GIT_VERSION=$(git describe --tags --always)

docker pull stratdat/sphinx-html2pdf:production

echo "Building PDF"
docker compose run \
  --build \
  -e GIT_VERSION \
  --rm sphinx \
  make singlehtml
  
popd

echo "Optimising images"

docker run --rm -e GIT_VERSION -v "$(pwd)":/mnt/workdir \
  --workdir /mnt/workdir/doc/build/singlehtml/_images \
  stratdat/sphinx-html2pdf:production \
  find . -name *.png -exec pngquant --force --output {} 8 {} \;

TIMESTAMP=$(git show -s --format="%ct")

docker run --rm -e GIT_VERSION -v "$(pwd)":/mnt/workdir \
  stratdat/sphinx-html2pdf:production \
  /mnt/workdir/scripts/make-pdf.pl \
  --pdf-name "${DOC_NAME}-${DOC_VERSION}" \
  --doc-dir   "/mnt/workdir/doc" \
  --timestamp ${TIMESTAMP}

pushd .
cd doc

echo "Building HTML"
docker compose run \
  --build \
  -e GIT_VERSION \
  --rm sphinx \
  make html

  popd
