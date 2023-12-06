###### based on [Ever-Gauzy](https://github.com/ever-co/ever-gauzy)

# Ever-Gauzy-Api

[Ever-Gauzy](https://github.com/ever-co/ever-gauzy)  An Open Business Management Platform for Collaborative, On-Demand and Sharing Economies.

- Enterprise Resource Planning (ERP) software.
- Customer Relationship Management (CRM) software.
- Human Resource Management (HRM) software with employee Time and Activity Tracking functionality.
- Work and Project Management software.


## TL;DR;

```console
helm repo add ever-co https://charts.ever.co
helm install ever-co/ever-gauzy-api
```

## Introduction

This chart bootstraps a [Ever-Gauzy](https://github.com/ever-co/ever-gauzy) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Install the Chart

To install the chart with the release name `my-release`:

```console
$ # Helm 2
helm install --name my-release ever-co/ever-gauzy-api
$ # Helm 3
helm install my-release ever-co/ever-gauzy-api
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
| `replicaCount` | Number of ever-gauzy API replicas | `1` |
| `image.repository` | Repository for API image | `ghcr.io/ever-co/ever-gauzy-api-demo` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `image.tag` | Image tag | `"latest"` |
| `imagePullSecrets` | List of Docker registry secret names | `[]` |
| `nameOverride` | Override name for the chart | `""` |
| `fullnameOverride` | Override full name for the chart | `""` |
| `envs` | List of environment variables | `[]` |
| `serviceAccount.create` | Create a service account | `true` |
| `serviceAccount.automount` | Automatically mount a ServiceAccount's API credentials | `true` |
| `serviceAccount.annotations` | Annotations to add to the service account | `{}` |
| `serviceAccount.name` | Name of the service account | `""` |
| `loglevel` | Log level for the API | `"info"` |
| `adminPasswordReset` | Enable or disable admin password reset feature | `true` |
| `allowSuperAdminRole` | Allow or disallow users with super admin role | `true` |
| `sentry.sentryDsn` | Sentry DSN (Data Source Name) | `""` |
| `sentry.sentryHttpTracingEnabled` | Enable or disable Sentry HTTP tracing | `false` |
| `sentry.sentryPostgresTrackingEnabled` | Enable or disable Sentry Postgres tracking | `false` |
| `jwt.jwtSecret` | Secret key for JWT | `"changeMe"` |
| `jwt.jwtRefreshTokenSecret` | Refresh token secret for JWT | `"changeMe"` |
| `jwt.jwtRefreshTokenExpirationTime` | Expiration time for JWT refresh tokens in seconds | `"86400"` |
| `s3.awsAccessKeyId` | AWS Access Key ID for S3 | `""` |
| `s3.awsSecretAccessKey` | AWS Secret Access Key for S3 | `""` |
| `s3.awsRegion` | AWS region for S3 | `""` |
| `s3.awsS3Bucket` | AWS S3 bucket name | `""` |
| `wasabiS3.wasabiAccessKeyId` | Wasabi Access Key ID | `""` |
| `wasabiS3.wasabiSecretAccessKey` | Wasabi Secret Access Key | `""` |
| `wasabiS3.wasabiRegion` | Wasabi region | `""` |
| `wasabiS3.wasabiServiceUrl` | Wasabi Service URL | `""` |
| `wasabiS3.wasabiS3Bucket` | Wasabi S3 bucket name | `""` |
| `mailConfig.mailFromAddress` | Email address used in the 'From' field | `""` |
| `mailConfig.mailHost` | Mail server host | `""` |
| `mailConfig.mailPort` | Mail server port | `""` |
| `mailConfig.mailUserName` | Username for mail authentication | `""` |
| `mailConfig.mailPassword` | Password for mail authentication | `""` |
| `googleAuth.gClientId` | Google Client ID | `""` |
| `googleAuth.gClientSecret` | Google Client Secret | `""` |
| `googleAuth.gCallbackUrl` | Callback URL for Google authentication | `""` |
| `facebookAuth.fbClientId` | Facebook Client ID | `""` |
| `facebookAuth.fbClientSecret` | Facebook Client Secret | `""` |
| `facebookAuth.fbGraphVersion` | Facebook Graph API version | `""` |
| `facebookAuth.fbCallbackUrl` | Callback URL for Facebook authentication | `""` |
| `gauzyAi.graphqlEndpoint` | GraphQL endpoint for Gauzy AI | `""` |
| `gauzyAi.restEndpoint` | REST endpoint for Gauzy AI | `""` |
| `unleash.unleashAppName` | Unleash application name | `""` |
| `unleash.unleashApiUrl` | Unleash API URL | `""` |
| `unleash.unleashInstanceId` | Unleash instance ID | `""` |
| `unleash.unleashRefreshInterval` | Unleash refresh interval | `""` |
| `unleash.unleashMatricsInterval` | Unleash metrics interval | `""` |
| `unleash.unleashApiKey` | Unleash API key | `""` |
| `pm2.pm2PublicKey` | PM2 public key | `""` |
| `pm2.pm2SecretKey` | PM2 secret key | `""` |
| `pm2.pm2MachineName` | PM2 machine name | `""` |
| `jitsu.serverUrl` | Jitsu server URL | `""` |
| `jitsu.serverWriteKey` | Jitsu server write key | `""` |
| `gitHub.githubClientId` | GitHub Client ID | `""` |
| `gitHub.githubClientSecret` | GitHub Client Secret | `""` |
| `gitHub.githubWebhookUrl` | GitHub webhook URL | `""` |
| `gitHub.githubWebhookSecret` | GitHub webhook secret | `""` |
| `gitHub.githubAppPrivateKey` | GitHub App private key | `""` |
| `gitHub.githubAppId` | GitHub App ID | `""` |
| `gitHub.githubAppName` | GitHub App name | `""` |
| `gitHub.githubCallbackUrl` | GitHub callback URL | `""` |
| `gitHub.githubPostInstallUrl` | GitHub post-installation URL | `""` |
| `podAnnotations` | Annotations to add to pods | `{}` |
| `podLabels` | Labels to add to pods | `{}` |
| `podSecurityContext` | Security context for pods | `{}` |
| `securityContext` | Security context for containers | `{}` |
| `service.type` | Service type | `ClusterIP` |
| `service.port` | Service port | `80` |
| `service.targetPort` | Target port for the service | `3000` |
| `ingress.enabled` | Enable Ingress | `false` |
| `ingress.className` | Ingress class name | `""` |
| `ingress.annotations` | Annotations for Ingress | `{}` |
| `ingress.hosts` | List of Ingress hosts | `[{"host": "chart-example.local", "paths": [{"path": "/", "pathType": "ImplementationSpecific"}]}]` |
| `ingress.tls` | TLS configuration for Ingress | `[]` |
| `resources` | Resource requests and limits | `{}` |
| `nodeSelector` | Node labels for pod assignment | `{}` |
| `tolerations` | Toleration labels for pod assignment | `[]` |
| `affinity` | Affinity settings for pod assignment | `{}` |
| `postgresql.global.imageRegistry` | Global Docker image registry | `""` |
| `postgresql.global.imagePullSecrets` | Global Docker registry secret names as an array | `[]` |
| `postgresql.global.storageClass` | Global StorageClass for Persistent Volume(s) | `""` |
| `postgresql.auth.postgresPassword` | Password for the "postgres" admin user | `""` |
| `postgresql.auth.username` | Name for a custom user to create | `""` |
| `postgresql.auth.password` | Password for the custom user to create | `""` |
| `postgresql.auth.database` | Name for a custom database to create | `""` |
| `postgresql.auth.existingSecret` | Name of an existing secret to use for PostgreSQL credentials | `""` |
| `postgresql.auth.secretKeys.adminPasswordKey` | Name of the key in an existing secret to use for the admin password | `""` (Only used when `postgresql.auth.existingSecret` is set) |
| `postgresql.auth.secretKeys.userPasswordKey` | Name of the key in an existing secret to use for the user password | `""` (Only used when `postgresql.auth.existingSecret` is set) |
| `postgresql.auth.secretKeys.replicationPasswordKey` | Name of the key in an existing secret to use for replication password | `""` (Only used when `postgresql.auth.existingSecret` is set) |
| `postgresql.service.ports.postgresql` | PostgreSQL service port | `""` |



Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```console
$ # Helm 2
helm install ever-co/ever-gauzy-api --name my-release \
  --set global.env.production=true
$ # Helm 3
helm install my-release ever-co/ever-gauzy-api \
  --set global.env.production=true
```

Alternatively, a YAML file that specifies the values for the parameters can be
provided while installing the chart. For example:

```console
$ # Helm 2
helm install ever-co/ever-gauzy-api --name my-release -f values.yaml
$ # Helm 3
helm install my-release ever-co/ever-gauzy-api -f values.yaml
```

> **Tip**: You can use the default [values.yaml](https://github.com/ever-co/ever-charts/blob/develop/charts/ever-gauzy-api/values.yaml) and look on [examples](https://github.com/ever-co/ever-charts/tree/develop/charts/ever-gauzy-api/examples).

