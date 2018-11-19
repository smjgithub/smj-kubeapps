#!/usr/bin/env bash

helm delete --purge kubeapps
kubectl delete crd apprepositories.kubeapps.com