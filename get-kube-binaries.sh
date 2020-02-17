#!/usr/bin/env bash
curl -L  -O https://dl.k8s.io/v1.17.3/kubernetes-node-linux-amd64.tar.gz && \
tar -xzf kubernetes-node-linux-amd64.tar.gz && \
mkdir $PWD/src/config/kube-binaries
mv kubernetes/node/bin/*  $PWD/src/config/kube-binaries/