#!/usr/bin/env bash

docker build -t wdio-test:latest .
docker run --rm wdio-test:latest
