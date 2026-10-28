#!/bin/bash

# exit when any command fails
set -e

if [ $# == 0 ]; then
  CLUSTER="dev"
else
  CLUSTER="$1"
fi

# JupyterHub helm chart version, pinned so a `helm repo update` can't change it.
# 4.x needs a hub image built on k8s-hub 4.x (JupyterHub 5).
JUPYTERHUB_CHART_VERSION="4.4.4"

# switch to correct cluster
kubectl config use-context incore-${CLUSTER}

# deploy
helm upgrade jupyterhub jupyterhub/jupyterhub --namespace incore \
  --version ${JUPYTERHUB_CHART_VERSION} \
  -f values-jupyterhub-${CLUSTER}.yaml \
  -f jupyterhub-common.yaml
