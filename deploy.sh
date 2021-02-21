#!/bin/bash

# exit when any command fails
set -e

if [ $# == 0 ]; then
  CLUSTER="tst"
else
  CLUSTER="$1"
fi


# switch to correct cluster
kubectx incore-${CLUSTER}

# make sure incore namespace exists
kubectl create namespace incore || true

# load secret to pull images
kubectl -n incore create secret generic regcred --from-file=.dockerconfigjson=regcred.json --type=kubernetes.io/dockerconfigjson || true

# create PVC
#sed "s/-tst/-${CLUSTER}/g" incore-pvc.yaml | kubectl -n incore apply -f -

# deploy
helm upgrade --install --namespace incore --create-namespace incore incore  --values values-incore-${CLUSTER}.yaml
