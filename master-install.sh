#!/bin/bash
host=`hostname -i | awk '{print $2}'`
kubeadm init --pod-network-cidr=192.168.0.0/16  --apiserver-advertise-address=$host
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

apt-get install bash-completion -y
echo 'source <(kubectl completion bash)' >>~/.bashrc
kubectl completion bash >/etc/bash_completion.d/kubectl
echo 'alias k=kubectl' >>~/.bashrc
echo 'complete -F __start_kubectl k' >>~/.bashrc
source /usr/share/bash-completion/bash_completion
