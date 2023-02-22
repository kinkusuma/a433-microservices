#!/bin/bash

# build docker image
docker build -t karsajobs:latest .

# menyesuaikan nama image sesuai format registry
docker tag karsajobs:latest ghcr.io/kinkusuma/karsajobs:latest

# login ke registry
echo $CR_PAT | docker login ghcr.io -u kinkusuma --password-stdin

# push image ke registry
docker push ghcr.io/kinkusuma/karsajobs:latest
