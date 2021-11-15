#!/bin/bash
set -e

./check-root.sh


apt update
GCP_PACKAGES_URL=https://packages.cloud.google.com/apt/doc/apt-key.gpg
apt -y install curl apt-transport-https
curl -s $GCP_PACKAGES_URL | apt-key add -


k8sListPath=/etc/apt/sources.list.d/kubernetes.list
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee $k8sListPath

apt update
apt -y install vim git curl wget kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl
echo "$(kubectl version --client && kubeadm version)"

# disable swap
sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
swapoff -a
