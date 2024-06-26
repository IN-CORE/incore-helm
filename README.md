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

For changes see [CHANGELOG](CHANGELOG.md).

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
