#!/bin/bash

#repo=/caas-system/sorry-server/sorry-server
repo=mtinny/nginx-404
tag=${tag:-v0.0.1}
ltag=${ltag:-latest}

image="${repo}:${tag}"
docker build -t ${image} .
docker push ${image}

limage="${repo}:${ltag}"
docker tag ${image} ${limage}
docker push ${limage}

