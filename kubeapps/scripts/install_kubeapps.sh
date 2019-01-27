#!/usr/bin/env bash

# This ClusterRoleBinding allows kubernetes-dashboard higher level permissions
kubectl apply -f ../config/dashboard-admin.yaml

kubectl -n kube-system create sa tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller

# Initialise the helm system by creating the Tiller control pod
helm init --service-account tiller

echo "Waiting 10 seconds for Tiller pod to initialise"
for LOOP in {1..10}
do
    echo -n "."
    sleep 1
done

echo ""
echo "Installing Kubeapps..."

# Install the kubeapps chart with initial custom chart repository
helm install --name kubeapps --namespace kubeapps -f ../config/custom-values.yaml bitnami/kubeapps

kubectl create serviceaccount kubeapps-operator
kubectl create clusterrolebinding kubeapps-operator --clusterrole=cluster-admin --serviceaccount=default:kubeapps-operator

