###### based on [Ever-Teams](https://github.com/ever-co/ever-teams)

# Ever Teams Platform

## ⭐️ What is it?

[Ever® Teams™](https://app.ever.team) - Open Work and Project Management Platform.

![web](https://docs.ever.team/web/overview.png)


## ✨ Features

Below is a list of the most important planned features:

-   Work / Workforce Management
-   Time Management / Time Tracking / Activity Tracking
-   Productivity Tracking & Metrics
-   Projects / Tasks & Issues Management
-   Organizations / Teams
-   Tags / Labels
-   Integrations (GitHub, GitLab, Bitbucket, JIRA, etc.)
-   Dark / Black / Light Themes


## TL;DR;

```console
helm repo add ever-co https://charts.ever.co
helm install ever-co/ever-teams
```

## Introduction

This chart bootstraps a [Ever-Teams](https://github.com/ever-co/ever-teams) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Install the Chart

To install the chart with the release name `my-release`:

```console
$ # Helm 2
helm install --name my-release ever-co/ever-teams
$ # Helm 3
helm install my-release ever-co/ever-teams
```

The command deploys ever-gauzy on the Kubernetes cluster in the default configuration. The configuration section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstall the Chart

To uninstall/delete the `my-release` deployment:

```console
$ # Helm 2
helm delete --purge my-release
$ # Helm 3
helm uninstall my-release
```

The command removes nearly all the Kubernetes components associated with the chart and deletes the release.

## Configuration

| Parameter                            | Description                                                   | Default                                           |
| ------------------------------------ | ------------------------------------------------------------- | ------------------------------------------------- |
| `global.env.production`              | Set the environment to production (true) or development (false) | `false`                                           |
| `replicaCount`                       | Number of ever-gauzy API replicas                              | `1`                                               |
| `image.repository`                   | Repository for the ever-teams image                            | `ghcr.io/ever-co/ever-teams-webapp-dev`          |
| `image.pullPolicy`                   | Image pull policy                                             | `IfNotPresent`                                    |
| `image.tag`                          | Image tag                                                     | `latest`                                          |
| `imagePullSecrets`                   | List of secret names to use for pulling images                | `[]`                                              |
| `nameOverride`                       | String to partially override `fullname` with a string         | `""`                                              |
| `fullnameOverride`                   | String to fully override `fullname` with a string             | `""`                                              |
| `serviceAccount.create`              | Create a service account                                      | `true`                                            |
| `serviceAccount.automount`           | Automatically mount a ServiceAccount's API credentials        | `true`                                            |
| `serviceAccount.annotations`         | Annotations to add to the service account                      | `{}`                                              |
| `serviceAccount.name`                | The name of the service account to use                         | `""`                                             |
| `gauzy.gauzyApiServerUrl`            | Gauzy API Server URL                                          | `""`                                              |
| `gauzy.nextPublicGauzyApiServerUrl` | Next Public Gauzy API Server URL                               | `""`                                              |
| `sentry.nextPublicSentryDns`         | Sentry DNS for Next Public                                    | `""`                                              |
| `sentry.sentryDsn`                   | Sentry DSN                                                    | `""`                                              |
| `sentry.sentryAuthToken`             | Sentry Authentication Token                                   | `""`                                              |
| `sentry.sentryProject`               | Sentry Project                                                | `""`                                              |
| `sentry.sentryDebug`                 | Sentry Debug Mode                                             | `""`                                              |
| `sentry.sentryOrg`                   | Sentry Organization                                           | `""`                                              |
| `jitsu.nextPublicJitsuBrowserWriteKey` | Jitsu Browser Write Key for Next Public                      | `""`                                              |
| `jitsu.nextPublicJitsuBrowserUrl`    | Jitsu Browser URL for Next Public                             | `""`                                              |
| `jitsu.jitsuServerWriteKey`          | Jitsu Server Write Key                                        | `""`                                              |
| `jitsu.jitsuServerUrl`               | Jitsu Server URL                                              | `""`                                              |
| `mailchimp.mailchimpListId`          | Mailchimp List ID                                             | `""`                                              |
| `mailchimp.mailchimpApiKey`          | Mailchimp API Key                                             | `""`                                              |
| `smtp.smtpFromAddress`               | SMTP From Address                                             | `""`                                              |
| `smtp.smtpHost`                      | SMTP Host                                                     | `""`                                              |
| `smtp.smtpSecure`                    | SMTP Secure Connection                                        | `""`                                              |
| `smtp.smtpUsername`                  | SMTP Username                                                 | `""`                                              |
| `smtp.smtpPassword`                  | SMTP Password                                                 | `""`                                              |
| `board.nextPublicBoardFirebaseConfig` | Board Firebase Configuration for Next Public                 | `""`                                              |
| `board.nextPublicBoardBackendPostUrl` | Board Backend Post URL for Next Public                        | `""`                                              |
| `board.nextPublicBoardAppDomain`     | Board Application Domain for Next Public                      | `""`                                              |
| `meet.meetJwtAppSecret`              | Meet JWT Application Secret                                   | `""`                                              |
| `meet.meetJwtAppId`                  | Meet JWT Application ID                                       | `""`                                              |
| `meet.nextPublicMeetDomain`          | Next Public Meet Domain                                       | `""`                                              |
| `chatwoot.nextPublicChatwootApiKey`  | Next Public Chatwoot API Key                                   | `""`                                              |
| `captcha.captchaSecretKey`           | Captcha Secret Key                                             | `""`                                              |
| `captcha.nextPublicCaptchaSiteKey`   | Next Public Captcha Site Key                                   | `""`                                              |
| `podAnnotations`                     | Annotations to be added to pods                                | `{}`                                              |
| `podLabels`                          | Labels to be added to pods                                     | `{}`                                              |
| `podSecurityContext`                 | Security context options for pods                              | `{}`                                              |
| `securityContext`                    | Additional security context options for containers             | `{}`                                              |
| `service.type`                       | Kubernetes service type                                       | `ClusterIP`                                       |
| `service.port`                       | Service port within the pod                                   | `80`                                              |
| `service.targetPort`                 | Service port on the container                                 | `3000`                                            |
| `ingress.enabled`                    | Enable or disable the Ingress                                  | `false`                                           |
| `ingress.className`                  | Ingress class name                                            | `""`                                              |
| `ingress.annotations`                | Ingress annotations                                           | `{}`                                              |
| `ingress.hosts`                      | List of Ingress hosts                                         | see below                                         |
| `ingress.tls`                        | List of TLS configuration for Ingress                         | `[]`                                              |
| `resources`                          | Resource limits and requests for containers                    | `{}`                                              |
| `volumes`                            | Additional volumes on the output Deployment definition        | `[]`                                              |
| `volumeMounts`                       | Additional volumeMounts on the output Deployment definition    | `[]`                                              |
| `nodeSelector`                       | Node labels for pod assignment                                | `{}`                                              |
| `tolerations`                        | List of node tolerations                                      | `[]`                                              |
| `affinity`                           | Node affinity rules                                           | `{}`                                              |



Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```console
$ # Helm 2
helm install ever-co/ever-teams --name my-release \
  --set global.env.production=true
$ # Helm 3
helm install my-release ever-co/ever-teams \
  --set global.env.production=true
```

Alternatively, a YAML file that specifies the values for the parameters can be
provided while installing the chart. For example:

```console
$ # Helm 2
helm install ever-co/ever-teams --name my-release -f values.yaml
$ # Helm 3
helm install my-release ever-co/ever-teams -f values.yaml
```

> **Tip**: You can use the default [values.yaml](https://github.com/ever-co/ever-charts/blob/develop/charts/ever-teams/values.yaml) and look on [examples](https://github.com/ever-co/ever-charts/tree/develop/charts/ever-teams/examples).

