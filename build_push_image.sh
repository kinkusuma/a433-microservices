#!/bin/bash

# build docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# menampilkan image lokal
docker image ls -a

# menyesuaikan nama image sesuai format registry
docker tag item-app:v1 ghcr.io/kinkusuma/item-app:v1

# login ke registry
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# push image ke registry
docker push ghcr.io/kinkusuma/item-app:v1
