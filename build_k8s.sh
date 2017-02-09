#!/bin/bash

images=(kube-proxy-amd64:v1.4.4 kube-discovery-amd64:1.0 kubedns-amd64:1.7 kube-scheduler-amd64:v1.4.4 kube-controller-manager-amd64:v1.4.4 kube-apiserver-amd64:v1.4.4 etcd-amd64:2.2.5 kube-dnsmasq-amd64:1.3 exechealthz-amd64:1.1 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.4.1)
for imageName in ${images[@]} ; do
  docker pull fenghan/$imageName
  docker tag fenghan/$imageName gcr.io/google_containers/$imageName
  docker rmi fenghan/$imageName
done


