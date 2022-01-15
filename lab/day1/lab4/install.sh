#!/usr/bin/env bash

# install packages 
yum install epel-release -y
yum install vim-enhanced -y
yum install git -y

# install docker 
yum install docker -y && systemctl enable --now docker

# install kubernetes cluster 
yum install -y kubectl-$1 kubelet-$1 kubeadm-$1 --disableexcludes=kubernetes
systemctl enable --now kubelet