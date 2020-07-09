#!/bin/sh

# Export env variables zone, cluster
export my_zone=us-central1-a
export my_cluster=demo-cluster-final

# Cluster creation 
gcloud container clusters create $my_cluster --num-nodes 3 --machine-type=n2-standard-2 --zone $my_zone --enable-ip-alias
# Featch credential 
gcloud container clusters get-credentials $my_cluster --zone $my_zone

# Deploy application
kubectl create -f kube-deployment.yml