# IN-CORE

[IN-CORE](https://incore.ncsa.illinois.edu/), run your scientific analyses that model the impact of natural hazards on a
community and the resilience of those communities.

The National Institute of Standards and Technology (NIST) funded the multi-university five-year Center of Excellence for
Risk-Based Community Resilience Planning (CoE), headquartered at Colorado State University, to develop the measurement 
science to support community resilience assessment. Measurement science is implemented on a platform called
Interdependent Networked Community Resilience Modeling Environment (IN-CORE). On IN-CORE, users can run scientific
analyses that model the impact of natural hazards and resiliency against the impact on communities. The IN-CORE
platform is built on a Kubernetes cluster with Docker container technology.

## TL;DR;

```bash
$ helm repo add ncsa https://opensource.ncsa.illinois.edu/charts/
$ helm install incore ncsa/incore
```

## Introduction

This chart bootstraps the IN-CORE  deployment on a [Kubernetes](http://kubernetes.io) cluster using the
[Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.16+
- helm 3
- PV provisioner support in the underlying infrastructure

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release ncsa/incore
```

The command deploys IN-CORE  on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation. This will also install MongoDB, RabbitMQ, elasticsearch as well as some extractors.

> **Tip**: List all releases using `helm list`
> **Note**: Using the jupyterhub helm chart, you can also run an instance of jupyterhub in your cluster

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

Needs to be written

The following table lists the configurable parameters of the IN-CORE chart and their default values.

| Parameter                            | Description                                      | Default                                                 |
| ------------------------------------ | ------------------------------------------------ | -------------------------------------------------------
| ingress.hosts[0].host | ingress rule for incore  | incore.example.com
| ingress.traefik | Use Traefik V2 middleware | false

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. Or more convenient
use a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-release -f values.yaml ncsa/incore
```

Since the ingress hostname is used in multiple places, it is recommended to use
a variable in yaml to copy this information. For example:

```yaml
hostname: &hostname incore-tst.ncsa.illinois.edu

ingress:
  hosts:
    - host: *hostname

      
keycloak:
  ingress:
    rules:
      - host: *hostname
        paths:
          - /auth/
```

> **Tip**: You can use the default [values.yaml](values.yaml) to find the names of all options

## Persistence

IN-CORE will use a persistent storage to store all data that is uploaded as well as is generated.

### Existing PersistentVolumeClaims

1. Create the PersistentVolume
1. Create the PersistentVolumeClaim
1. Install the chart

For an example of using existing PVC, see the file [incore-pvc.yaml](incore-pvc.yaml).

## ChangeLog

### Unreleased
- Added MONGODB_URI to auth deployment

### 1.22.1
- IN-CORE release 4.8.1

### 1.22.0
- IN-CORE release 4.8.0
- Removed Geoserver from the chart
- Added script to update jupyterhub charts

### 1.21.0
- IN-CORE release 4.7.0

### 1.20.1
- Geoserver uses the official image instead of custom-built image

### 1.20.0
- IN-CORE release 4.6.0
- Geoserver updated to 2.23.1
- Seperated Jupyterhub from charts in order to upgrade them separately

### 1.19.0
- IN-CORE release 4.5.0
- Removed usergroup sync for allocation

### 1.18.0
- IN-CORE release 4.2.0
- add X-Auth-User header
- Removed LDAP

### 1.17.0
- IN-CORE release 4.1.0
- Removed version tag cronjob

### 1.16.1
- Updated playbook config files

### 1.16.0
- Added maestro user sync
- Added playbook configmap

### 1.15.1
- update playbook to 0.2.0

### 1.15.0
- IN-CORE release 4.0.0
- Use datawolf subchart

### 1.14.1
- Updated maestro service

### 1.14.0
- Incore release 3.7.0

### 1.13.1
- Added SLC playbook template
- Added Joplin playbook template
- Added Galveston playbook tempate

### 1.13.0
- Incore release 3.6.0

### 1.12.3
- Renamed container name for jupyter hub and lab
- Added auth_role and auth_group env variables to authenticator
  
### 1.12.2
- Used wrong name for traefik middleware
- Update keycloak to 18.3.0

### 1.12.1
- Enable traefik v2 middleware

### 1.12.0
- Incore release 3.5.0
- Upgrade postgresql to 11 (requires a dump/restore of the database)
- Upgrade keyclock to 17.0.1

### 1.11.0
- Incore release 3.2.0
- Added usergroups sync from ldap to database

### 1.10.2
- Changed space service's livenessProb endpoint

### 1.10.1
- Fixed pyincore-data's documentation
- Pyincore-viz 1.5.1 release
- Pyincore 1.4.1 release

### 1.10.0
- Incore release 3.1.0.

### 1.9.1
- Disabled jupyterhub user scheduler to make incore-lab spawns from random node.

### 1.9.0
- Incore release 3.0.0

### 1.8.0
- Added common_mongo_uri variable to incore services
- Incore release 2.8.0

### 1.7.1
- Made IP2Location variable in incore-auth

### 1.7.0
- Added maestro service deployment
- Incore release 2.7.0

### 1.6.1
- Make quotas for jupyterhub configurable

### 1.6.0
- Incore release 2.6.0

### 1.5.2
- Changed datawolf's max pool size

### 1.5.1
- Incore release 2.5.1

### 1.5.0 
- Incore release 2.5.0

### 1.4.3
- Added plotting-service deployment

### 1.4.2
- Added pyincore-data doc deployment

### 1.4.1
- Added hazard service url environmental variable to data service

### 1.4.0
- Incore release 2.3.0

### 1.3.2
- Enable semantics live/ready checks

### 1.3.1
- Incore service hotfix 1.2.1
- Pyincore-viz hotfix 1.1.1
- Incore docs hotfix 2.2.1
- Incore ui hotfix 0.9.3

### 1.3.0
- Incore release 2.2.0
- Upgrade jupyterhub to 0.11
- Enable initial implementation of quota for jupyterlab
- Updated playbook ingress version

### 1.2.1
- Incore service hotfix 1.1.1

### 1.2.0
- Incore release 2.1.0

### 1.1.0
- Cors filter is now a list of hosts
- Datawolf and playbook added to the chart

### 1.0.3
- Jupyterhub configuration changed:
  - Removed home ownership -R option in singleuser

### 1.0.2
- Documentation updates:
  - Updated incore documents to 2.0.2

### 1.0.1
- Documentation updates:
  - Fixed broken Jupyter Notebook examples
  - Fixed fragility curves with SD as demand type in DFR3 service

### 1.0.0
This is the first release of the helm chart for INCORE 2.0.0
