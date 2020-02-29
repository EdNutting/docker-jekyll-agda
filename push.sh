#!/bin/bash

docker tag ednutting/jekyll-agda:dev ednutting/jekyll-agda:$agda_version
docker push ednutting/jekyll-agda:$agda_version
