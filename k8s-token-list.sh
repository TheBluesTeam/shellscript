#!/bin/bash
  
kubeadm token list | awk '{ print $1}'

echo "=====sha256====="
openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'
