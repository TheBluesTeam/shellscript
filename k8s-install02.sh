#!/bin/bash
echo "package install"
apt-get install docker-ce=5:20.10.8~3-0~ubuntu-focal docker-ce-cli=5:20.10.8~3-0~ubuntu-focal containerd.io=1.4.9-1 -y
apt-get install kubeadm=1.20.12-00 kubectl=1.20.12-00 kubelet=1.20.12-00 -y
systemctl enable docker
systemctl enable kubelet
