#!/bin/bash

source version.env

docker compose run \
  --build \
  --rm sphinx \
  make html
