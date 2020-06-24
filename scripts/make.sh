#!/bin/bash

source version.conf

# Exit if anything errors
set -e

docker pull stratdat/sphinx:production

#docker run \
#  -v "$(pwd)":/mnt/workdir \
#  stratdat/sphinx:production make singlehtml

#docker pull stratdat/sphinx-html2pdf:production

#echo "Optimising images"
#docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
#  --workdir /mnt/workdir/doc/build/singlehtml/_images \
#  stratdat/sphinx-html2pdf:production \
#  find . -name *.png -exec pngquant --force --output {} 8 {} \;

#PDF_NAME="${DOC_NAME// /-}-$DOC_VERSION"
#TIMESTAMP=$(git show -s --format="%ct")

#echo "Building PDF"
#docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
#  stratdat/sphinx-html2pdf:production \
#  /mnt/workdir/scripts/make-pdf.pl \
#  --pdf-name "${PDF_NAME}" \
#  --doc-dir  "/mnt/workdir" \
#  --timestamp ${TIMESTAMP}

docker run \
 -v "$(pwd)":/mnt/workdir \
 stratdat/sphinx:production make html

#rm -rf build/singlehtml
