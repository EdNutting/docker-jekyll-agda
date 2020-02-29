#!/bin/bash

docker build --build-arg AGDA_VERSION=$agda_version -t ednutting/jekyll-agda:dev .
