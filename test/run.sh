#!/bin/bash

set -e

k3d cluster create --config k3d.yaml

helm upgrade --install --debug \
ddns-updater-test \
--set secret.api.keyValue=test \
--set secret.domain.name=test \
--set affinity.node.label=network \
--set affinity.node.value={mbit} \
../helm/.

kubectl get nodes
kubectl get cronjob

#k3d cluster delete ddns-updater-cluster