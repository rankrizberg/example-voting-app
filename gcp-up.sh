#!/bin/sh

export my_zone=us-central1-a
export my_cluster=demo-cluster
gcloud container clusters create $my_cluster --num-nodes 3 --machine-type=n2-standard-2 --zone $my_zone --enable-ip-alias
gcloud container clusters get-credentials $my_cluster --zone $my_zone

#git clone https://github.com/levep/example-voting-app.git
#cd example-voting-app/
kubectl create -f kube-deployment.yml