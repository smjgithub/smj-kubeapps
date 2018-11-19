#!/usr/bin/env bash

# Initialise the helm system by creating the Tiller control pod
helm init

# Install the kubeapps chart with initial custom chart repository
helm install --name kubeapps --namespace kubeapps -f config/custom-values.yaml bitnami/kubeapps

kubectl create serviceaccount kubeapps-operator
kubectl create clusterrolebinding kubeapps-operator --clusterrole=cluster-admin --serviceaccount=default:kubeapps-operator

kubectl get secret $(kubectl get serviceaccount kubeapps-operator -o jsonpath='{.secrets[].name}') -o jsonpath='{.data.token}' | base64 --decode
