#!/usr/bin/env bash

# Initialise the helm system by creating the Tiller control pod
helm init

echo "Waiting 20 seconds for Tiller pod to initialise"
for LOOP in {1..10}
do
    echo -n "."
    sleep 1
done

echo ""
echo "Installing Kubeapps..."

# Install the kubeapps chart with initial custom chart repository
helm install --name kubeapps --namespace kubeapps -f config/custom-values.yaml bitnami/kubeapps

kubectl create serviceaccount kubeapps-operator
kubectl create clusterrolebinding kubeapps-operator --clusterrole=cluster-admin --serviceaccount=default:kubeapps-operator

