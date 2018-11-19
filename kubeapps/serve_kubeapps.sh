#!/usr/bin/env bash

echo "Kubeapps URL: http://127.0.0.1:8080"
export POD_NAME=$(kubectl get pods --namespace kubeapps -l "app=kubeapps" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward --namespace kubeapps $POD_NAME 8080:8080
