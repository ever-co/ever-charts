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
helm install ever-co/ever-teams-stack
```

## Introduction
This chart is combination of self-hosted [Ever-Teams](https://github.com/ever-co/ever-teams) with self-hosted [Ever-Gauzy-Api](https://github.com/ever-co/ever-gauzy) and, bootstraps deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Install the Chart

To install the chart with the release name `my-release`:

```console
$ # Helm 2
helm install --name my-release ever-co/ever-teams-stack
$ # Helm 3
helm install my-release ever-co/ever-teams-stack
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
| `ever-teams.global.env.production`              | Set the environment to production (true) or development (false) | `false`                                           |
| `ever-teams.replicaCount`                       | Number of ever-gauzy API replicas                              | `1`                                               |
| `ever-teams.image.repository`                   | Repository for the ever-teams image                            | `ghcr.io/ever-co/ever-teams-webapp`          |
| `ever-teams.image.pullPolicy`                   | Image pull policy                                             | `IfNotPresent`                                    |
| `ever-teams.image.tag`                          | Image tag                                                     | `latest`                                          |
| `ever-teams.imagePullSecrets`                   | List of secret names to use for pulling images                | `[]`                                              |
| `ever-teams.nameOverride`                       | String to partially override `fullname` with a string         | `""`                                              |
| `ever-teams.fullnameOverride`                   | String to fully override `fullname` with a string             | `""`                                              |
| `ever-teams.serviceAccount.create`              | Create a service account                                      | `true`                                            |
| `ever-teams.serviceAccount.automount`           | Automatically mount a ServiceAccount's API credentials        | `true`                                            |
| `ever-teams.serviceAccount.annotations`         | Annotations to add to the service account                      | `{}`                                              |
| `ever-teams.serviceAccount.name`                | The name of the service account to use                         | `""`                                             |
| `ever-teams.gauzy.gauzyApiServerUrl`            | Gauzy API Server URL                                          | `""`                                              |
| `ever-teams.gauzy.nextPublicGauzyApiServerUrl` | Next Public Gauzy API Server URL                               | `""`                                              |
| `ever-teams.sentry.nextPublicSentryDns`         | Sentry DNS for Next Public                                    | `""`                                              |
| `ever-teams.sentry.sentryDsn`                   | Sentry DSN                                                    | `""`                                              |
| `ever-teams.sentry.sentryAuthToken`             | Sentry Authentication Token                                   | `""`                                              |
| `ever-teams.sentry.sentryProject`               | Sentry Project                                                | `""`                                              |
| `ever-teams.sentry.sentryDebug`                 | Sentry Debug Mode                                             | `""`                                              |
| `ever-teams.sentry.sentryOrg`                   | Sentry Organization                                           | `""`                                              |
| `ever-teams.jitsu.nextPublicJitsuBrowserWriteKey` | Jitsu Browser Write Key for Next Public                      | `""`                                              |
| `ever-teams.jitsu.nextPublicJitsuBrowserUrl`    | Jitsu Browser URL for Next Public                             | `""`                                              |
| `ever-teams.jitsu.jitsuServerWriteKey`          | Jitsu Server Write Key                                        | `""`                                              |
| `ever-teams.jitsu.jitsuServerUrl`               | Jitsu Server URL                                              | `""`                                              |
| `ever-teams.mailchimp.mailchimpListId`          | Mailchimp List ID                                             | `""`                                              |
| `ever-teams.mailchimp.mailchimpApiKey`          | Mailchimp API Key                                             | `""`                                              |
| `ever-teams.smtp.smtpFromAddress`               | SMTP From Address                                             | `""`                                              |
| `ever-teams.smtp.smtpHost`                      | SMTP Host                                                     | `""`                                              |
| `ever-teams.smtp.smtpSecure`                    | SMTP Secure Connection                                        | `""`                                              |
| `ever-teams.smtp.smtpUsername`                  | SMTP Username                                                 | `""`                                              |
| `ever-teams.smtp.smtpPassword`                  | SMTP Password                                                 | `""`                                              |
| `ever-teams.board.nextPublicBoardFirebaseConfig` | Board Firebase Configuration for Next Public                 | `""`                                              |
| `ever-teams.board.nextPublicBoardBackendPostUrl` | Board Backend Post URL for Next Public                        | `""`                                              |
| `ever-teams.board.nextPublicBoardAppDomain`     | Board Application Domain for Next Public                      | `""`                                              |
| `ever-teams.meet.meetJwtAppSecret`              | Meet JWT Application Secret                                   | `""`                                              |
| `ever-teams.meet.meetJwtAppId`                  | Meet JWT Application ID                                       | `""`                                              |
| `ever-teams.meet.nextPublicMeetDomain`          | Next Public Meet Domain                                       | `""`                                              |
| `ever-teams.chatwoot.nextPublicChatwootApiKey`  | Next Public Chatwoot API Key                                   | `""`                                              |
| `ever-teams.captcha.captchaSecretKey`           | Captcha Secret Key                                             | `""`                                              |
| `ever-teams.captcha.nextPublicCaptchaSiteKey`   | Next Public Captcha Site Key                                   | `""`                                              |
| `ever-teams.podAnnotations`                     | Annotations to be added to pods                                | `{}`                                              |
| `ever-teams.podLabels`                          | Labels to be added to pods                                     | `{}`                                              |
| `ever-teams.podSecurityContext`                 | Security context options for pods                              | `{}`                                              |
| `ever-teams.securityContext`                    | Additional security context options for containers             | `{}`                                              |
| `ever-teams.service.type`                       | Kubernetes service type                                       | `ClusterIP`                                       |
| `ever-teams.service.port`                       | Service port within the pod                                   | `80`                                              |
| `ever-teams.service.targetPort`                 | Service port on the container                                 | `3000`                                            |
| `ever-teams.ingress.enabled`                    | Enable or disable the Ingress                                  | `false`                                           |
| `ever-teams.ingress.className`                  | Ingress class name                                            | `""`                                              |
| `ever-teams.ingress.annotations`                | Ingress annotations                                           | `{}`                                              |
| `ever-teams.ingress.hosts`                      | List of Ingress hosts                                         | see below                                         |
| `ever-teams.ingress.tls`                        | List of TLS configuration for Ingress                         | `[]`                                              |
| `ever-teams.resources`                          | Resource limits and requests for containers                    | `{}`                                              |
| `ever-teams.volumes`                            | Additional volumes on the output Deployment definition        | `[]`                                              |
| `ever-teams.volumeMounts`                       | Additional volumeMounts on the output Deployment definition    | `[]`                                              |
| `ever-teams.nodeSelector`                       | Node labels for pod assignment                                | `{}`                                              |
| `ever-teams.tolerations`                        | List of node tolerations                                      | `[]`                                              |
| `ever-teams.affinity`                           | Node affinity rules                                           | `{}`                                              |
| `ever-gauzy-api.global.env.production` | Set the environment to production (true) or development (false) | `false` |
| `ever-gauzy-api.global.baseUrls.api` | The base URL for the API | `""` |
| `ever-gauzy-api.global.baseUrls.client` | The base URL for the client | `""` |
| `ever-gauzy-api.replicaCount` | Number of ever-gauzy API replicas | `1` |
| `ever-gauzy-api.image.repository` | Repository for API image | `ghcr.io/ever-co/ever-gauzy-api-demo` |
| `ever-gauzy-api.image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `ever-gauzy-api.image.tag` | Image tag | `"latest"` |
| `ever-gauzy-api.imagePullSecrets` | List of Docker registry secret names | `[]` |
| `ever-gauzy-api.nameOverride` | Override name for the chart | `""` |
| `ever-gauzy-api.fullnameOverride` | Override full name for the chart | `""` |
| `ever-gauzy-api.envs` | List of environment variables | `[]` |
| `ever-gauzy-api.serviceAccount.create` | Create a service account | `true` |
| `ever-gauzy-api.serviceAccount.automount` | Automatically mount a ServiceAccount's API credentials | `true` |
| `ever-gauzy-api.serviceAccount.annotations` | Annotations to add to the service account | `{}` |
| `ever-gauzy-api.serviceAccount.name` | Name of the service account | `""` |
| `ever-gauzy-api.loglevel` | Log level for the API | `"info"` |
| `ever-gauzy-api.adminPasswordReset` | Enable or disable admin password reset feature | `true` |
| `ever-gauzy-api.allowSuperAdminRole` | Allow or disallow users with super admin role | `true` |
| `ever-gauzy-api.sentry.sentryDsn` | Sentry DSN (Data Source Name) | `""` |
| `ever-gauzy-api.sentry.sentryHttpTracingEnabled` | Enable or disable Sentry HTTP tracing | `false` |
| `ever-gauzy-api.sentry.sentryPostgresTrackingEnabled` | Enable or disable Sentry Postgres tracking | `false` |
| `ever-gauzy-api.jwt.jwtSecret` | Secret key for JWT | `"changeMe"` |
| `ever-gauzy-api.jwt.jwtRefreshTokenSecret` | Refresh token secret for JWT | `"changeMe"` |
| `ever-gauzy-api.jwt.jwtRefreshTokenExpirationTime` | Expiration time for JWT refresh tokens in seconds | `"86400"` |
| `ever-gauzy-api.s3.awsAccessKeyId` | AWS Access Key ID for S3 | `""` |
| `ever-gauzy-api.s3.awsSecretAccessKey` | AWS Secret Access Key for S3 | `""` |
| `ever-gauzy-api.s3.awsRegion` | AWS region for S3 | `""` |
| `ever-gauzy-api.s3.awsS3Bucket` | AWS S3 bucket name | `""` |
| `ever-gauzy-api.wasabiS3.wasabiAccessKeyId` | Wasabi Access Key ID | `""` |
| `ever-gauzy-api.wasabiS3.wasabiSecretAccessKey` | Wasabi Secret Access Key | `""` |
| `ever-gauzy-api.wasabiS3.wasabiRegion` | Wasabi region | `""` |
| `ever-gauzy-api.wasabiS3.wasabiServiceUrl` | Wasabi Service URL | `""` |
| `ever-gauzy-api.wasabiS3.wasabiS3Bucket` | Wasabi S3 bucket name | `""` |
| `ever-gauzy-api.mailConfig.mailFromAddress` | Email address used in the 'From' field | `""` |
| `ever-gauzy-api.mailConfig.mailHost` | Mail server host | `""` |
| `ever-gauzy-api.mailConfig.mailPort` | Mail server port | `""` |
| `ever-gauzy-api.mailConfig.mailUserName` | Username for mail authentication | `""` |
| `ever-gauzy-api.mailConfig.mailPassword` | Password for mail authentication | `""` |
| `ever-gauzy-api.googleAuth.gClientId` | Google Client ID | `""` |
| `ever-gauzy-api.googleAuth.gClientSecret` | Google Client Secret | `""` |
| `ever-gauzy-api.googleAuth.gCallbackUrl` | Callback URL for Google authentication | `""` |
| `ever-gauzy-api.facebookAuth.fbClientId` | Facebook Client ID | `""` |
| `ever-gauzy-api.facebookAuth.fbClientSecret` | Facebook Client Secret | `""` |
| `ever-gauzy-api.facebookAuth.fbGraphVersion` | Facebook Graph API version | `""` |
| `ever-gauzy-api.facebookAuth.fbCallbackUrl` | Callback URL for Facebook authentication | `""` |
| `ever-gauzy-api.gauzyAi.graphqlEndpoint` | GraphQL endpoint for Gauzy AI | `""` |
| `ever-gauzy-api.gauzyAi.restEndpoint` | REST endpoint for Gauzy AI | `""` |
| `ever-gauzy-api.unleash.unleashAppName` | Unleash application name | `""` |
| `ever-gauzy-api.unleash.unleashApiUrl` | Unleash API URL | `""` |
| `ever-gauzy-api.unleash.unleashInstanceId` | Unleash instance ID | `""` |
| `ever-gauzy-api.unleash.unleashRefreshInterval` | Unleash refresh interval | `""` |
| `ever-gauzy-api.unleash.unleashMatricsInterval` | Unleash metrics interval | `""` |
| `ever-gauzy-api.unleash.unleashApiKey` | Unleash API key | `""` |
| `ever-gauzy-api.pm2.pm2PublicKey` | PM2 public key | `""` |
| `ever-gauzy-api.pm2.pm2SecretKey` | PM2 secret key | `""` |
| `ever-gauzy-api.pm2.pm2MachineName` | PM2 machine name | `""` |
| `ever-gauzy-api.jitsu.serverUrl` | Jitsu server URL | `""` |
| `ever-gauzy-api.jitsu.serverWriteKey` | Jitsu server write key | `""` |
| `ever-gauzy-api.gitHub.githubClientId` | GitHub Client ID | `""` |
| `ever-gauzy-api.gitHub.githubClientSecret` | GitHub Client Secret | `""` |
| `ever-gauzy-api.gitHub.githubWebhookUrl` | GitHub webhook URL | `""` |
| `ever-gauzy-api.gitHub.githubWebhookSecret` | GitHub webhook secret | `""` |
| `ever-gauzy-api.gitHub.githubAppPrivateKey` | GitHub App private key | `""` |
| `ever-gauzy-api.gitHub.githubAppId` | GitHub App ID | `""` |
| `ever-gauzy-api.gitHub.githubAppName` | GitHub App name | `""` |
| `ever-gauzy-api.gitHub.githubCallbackUrl` | GitHub callback URL | `""` |
| `ever-gauzy-api.gitHub.githubPostInstallUrl` | GitHub post-installation URL | `""` |
| `ever-gauzy-api.podAnnotations` | Annotations to add to pods | `{}` |
| `ever-gauzy-api.podLabels` | Labels to add to pods | `{}` |
| `ever-gauzy-api.podSecurityContext` | Security context for pods | `{}` |
| `ever-gauzy-api.securityContext` | Security context for containers | `{}` |
| `ever-gauzy-api.service.type` | Service type | `ClusterIP` |
| `ever-gauzy-api.service.port` | Service port | `80` |
| `ever-gauzy-api.service.targetPort` | Target port for the service | `3000` |
| `ever-gauzy-api.ingress.enabled` | Enable Ingress | `false` |
| `ever-gauzy-api.ingress.className` | Ingress class name | `""` |
| `ever-gauzy-api.ingress.annotations` | Annotations for Ingress | `{}` |
| `ever-gauzy-api.ingress.hosts` | List of Ingress hosts | `[{"host": "chart-example.local", "paths": [{"path": "/", "pathType": "ImplementationSpecific"}]}]` |
| `ever-gauzy-api.ingress.tls` | TLS configuration for Ingress | `[]` |
| `ever-gauzy-api.resources` | Resource requests and limits | `{}` |
| `ever-gauzy-api.nodeSelector` | Node labels for pod assignment | `{}` |
| `ever-gauzy-api.tolerations` | Toleration labels for pod assignment | `[]` |
| `ever-gauzy-api.affinity` | Affinity settings for pod assignment | `{}` |
| `ever-gauzy-api.postgresql.global.imageRegistry` | Global Docker image registry | `""` |
| `ever-gauzy-api.postgresql.global.imagePullSecrets` | Global Docker registry secret names as an array | `[]` |
| `ever-gauzy-api.postgresql.global.storageClass` | Global StorageClass for Persistent Volume(s) | `""` |
| `ever-gauzy-api.postgresql.auth.postgresPassword` | Password for the "postgres" admin user | `""` |
| `ever-gauzy-api.postgresql.auth.username` | Name for a custom user to create | `""` |
| `ever-gauzy-api.postgresql.auth.password` | Password for the custom user to create | `""` |
| `ever-gauzy-api.postgresql.auth.database` | Name for a custom database to create | `""` |
| `ever-gauzy-api.postgresql.auth.existingSecret` | Name of an existing secret to use for PostgreSQL credentials | `""` |
| `ever-gauzy-api.postgresql.auth.secretKeys.adminPasswordKey` | Name of the key in an existing secret to use for the admin password | `""` (Only used when `postgresql.auth.existingSecret` is set) |
| `ever-gauzy-api.postgresql.auth.secretKeys.userPasswordKey` | Name of the key in an existing secret to use for the user password | `""` (Only used when `postgresql.auth.existingSecret` is set) |
| `ever-gauzy-api.postgresql.auth.secretKeys.replicationPasswordKey` | Name of the key in an existing secret to use for replication password | `""` (Only used when `postgresql.auth.existingSecret` is set) |
| `ever-gauzy-api.postgresql.service.ports.postgresql` | PostgreSQL service port | `""` |



Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```console
$ # Helm 2
helm install ever-co/ever-teams-stack --name my-release \
  --set global.env.production=true
$ # Helm 3
helm install my-release ever-co/ever-teams-stack \
  --set global.env.production=true
```

Alternatively, a YAML file that specifies the values for the parameters can be
provided while installing the chart. For example:

```console
$ # Helm 2
helm install ever-co/ever-teams-stack --name my-release -f values.yaml
$ # Helm 3
helm install my-release ever-co/ever-teams-stack -f values.yaml
```

> **Tip**: You can use the default [values.yaml](https://github.com/ever-co/ever-charts/blob/develop/charts/ever-teams/values.yaml) and look on [examples](https://github.com/ever-co/ever-charts/tree/develop/charts/ever-teams-stack/examples).

