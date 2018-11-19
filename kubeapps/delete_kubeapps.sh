#!/usr/bin/env bash

helm delete --purge kubeapps
kubectl delete crd apprepositories.kubeapps.com

helm reset

kubectl delete serviceaccount kubeapps-operator
kubectl delete clusterrolebinding kubeapps-operator
kubectl delete namespace kubeapps