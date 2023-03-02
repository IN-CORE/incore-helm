#!/bin/bash

# exit when any command fails
set -e

if [ $# == 0 ]; then
  CLUSTER="dev"
else
  CLUSTER="$1"
fi


# switch to correct cluster
kubectl config use-context incore-${CLUSTER}

# deploy
helm upgrade --namespace incore incore . --values values-incore-${CLUSTER}.yaml
