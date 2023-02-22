#!/bin/bash

# build docker image
docker build -t karsajob-ui:latest .

# menyesuaikan nama image sesuai format registry
docker tag karsajobs-ui:latest ghcr.io/kinkusuma/karsajobs-ui:latest

# login ke registry
echo $CR_PAT | docker login ghcr.io -u kinkusuma --password-stdin

# push image ke registry
docker push ghcr.io/kinkusuma/karsajobs-ui:latest
