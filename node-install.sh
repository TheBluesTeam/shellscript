#!/bin/bash

kubeadm join 192.168.95.10:6443 --token vnt2c7.8jkpibh5q04s5ref \
    --discovery-token-ca-cert-hash sha256:89c3d280dbd52a9b417a00c288ad90ce6fbe0a6ef78805d883d6671d85929192 