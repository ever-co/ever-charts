###### based on [Ever-Gauzy](https://github.com/ever-co/ever-gauzy)

# Ever-Gauzy

[Ever-Gauzy](https://github.com/ever-co/ever-gauzy)  An Open Business Management Platform for Collaborative, On-Demand and Sharing Economies.

- Enterprise Resource Planning (ERP) software.
- Customer Relationship Management (CRM) software.
- Human Resource Management (HRM) software with employee Time and Activity Tracking functionality.
- Work and Project Management software.


## TL;DR;

```console
helm repo add ever-gauzy https://charts.gauzy.co
helm install ever-gauzy/ever-gauzy
```

## Introduction

This chart bootstraps a [Ever-Gauzy](https://github.com/ever-co/ever-gauzy) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Install the Chart

To install the chart with the release name `my-release`:

```console
$ # Helm 2
helm install --name my-release ever-gauzy/ever-gauzy
$ # Helm 3
helm install my-release ever-gauzy/ever-gauzy
```

The command deploys ever-gauzy on the Kubernetes cluster in the default configuration. The configuration section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstall the Chart

To uninstall/delete the `my-release` deployment:

```console
helm delete --purge my-release
```

The command removes nearly all the Kubernetes components associated with the chart and deletes the release.

## Configuration

| Parameter | Description | Default |
| --------- | ----------- | ------- |
| `global.env.production` | Set the environment to production (true) or development (false) | `false` |
| `global.baseUrls.api` | The base URL for the API | `""` |
| `global.baseUrls.client` | The base URL for the client | `""` |
| `webapp.replicaCount` | Number of ever-gauzy webapp replicas | `1` |


Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```console
$ # Helm 2
helm install ever-gauzy/ever-gauzy --name my-release \
  --set global.env.production=true
$ # Helm 3
helm install my-release ever-gauzy/ever-gauzy \
  --set global.env.production=true
```

Alternatively, a YAML file that specifies the values for the parameters can be
provided while installing the chart. For example:

```console
$ # Helm 2
helm install ever-gauzy/ever-gauzy --name my-release -f values.yaml
$ # Helm 3
helm install my-release ever-gauzy/ever-gauzy -f values.yaml
```

> **Tip**: You can use the default [values.yaml](https://github.com/ever-co/ever-gauzy-charts/blob/develop/charts/ever-gauzy/values.yaml) and look on [examples](https://github.com/ever-co/ever-gauzy-charts/tree/develop/charts/ever-gauzy/examples).

