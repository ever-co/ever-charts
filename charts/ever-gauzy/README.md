###### based on [Ever-Gauzy](https://github.com/ever-co/ever-gauzy)

# Ever Gauzy

[Ever Gauzy](https://github.com/ever-co/ever-gauzy) - Open Business Management Platform for Collaborative, On-Demand and Sharing Economies.

- Enterprise Resource Planning (ERP) software.
- Customer Relationship Management (CRM) software.
- Human Resource Management (HRM) software with employee Time and Activity Tracking functionality.
- Work and Project Management software.


## TL;DR;

```console
helm repo add ever-co https://charts.ever.co
helm install ever-co/ever-gauzy
```

## Introduction

This chart bootstraps a [Ever-Gauzy](https://github.com/ever-co/ever-gauzy) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Install the Chart

To install the chart with the release name `my-release`:

```console
$ # Helm 2
helm install --name my-release ever-co/ever-gauzy
$ # Helm 3
helm install my-release ever-co/ever-gauzy
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

| Parameter | Description | Default |
| --------- | ----------- | ------- |
| `global.env.production` | Set the environment to production (true) or development (false) | `false` |
| `global.baseUrls.api` | The base URL for the API | `""` |
| `global.baseUrls.client` | The base URL for the client | `""` |
| `webapp.replicaCount` | Number of ever-gauzy webapp replicas | `1` |
| `webapp.image.repository` | Repository for webapp image | `ghcr.io/ever-co/gauzy-webapp-demo` |
| `webapp.image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `webapp.image.tag` | Image tag | `"latest"` |
| `webapp.imagePullSecrets` | List of Docker registry secret names | `[]` |
| `webapp.nameOverride` | Override name for the chart | `""` |
| `webapp.fullnameOverride` | Override full name for the chart | `""` |
| `webapp.envs` | List of environment variables | `[]` |
| `webapp.serviceAccount.create` | Create a service account | `true` |
| `webapp.serviceAccount.automount` | Automatically mount a ServiceAccount's API credentials | `true` |
| `webapp.serviceAccount.annotations` | Annotations to add to the service account | `{}` |
| `webapp.serviceAccount.name` | Name of the service account | `""` |
| `webapp.cloudinary.apiKey` | Cloudinary API key | `""` |
| `webapp.cloudinary.cloudName` | Cloudinary cloud name | `""` |
| `webapp.googleMap.apiKey` | Google Maps API key | `""` |
| `webapp.googleMap.autoComplete` | Enable or disable auto-complete feature | `true` |
| `webapp.googleMap.defaultLatitude` | Default latitude for map center | `"42.6459136"` |
| `webapp.googleMap.defaultLongitude` | Default longitude for map center | `"23.3332736"` |
| `webapp.googleMap.defaultCurrency` | Default currency for location | `"USD"` |
| `webapp.gitHub.clientId` | GitHub client ID | `""` |
| `webapp.gitHub.appName` | Name of GitHub app | `""` |
| `webapp.gitHub.redirectUrl` | Redirect URL for GitHub authentication | `""` |
| `webapp.gitHub.postInstallUrl` | URL to redirect to after GitHub app installation | `""` |
| `webapp.gitHub.appId` | GitHub app ID | `""` |
| `webapp.jitsu.browserUrl` | Jitsu browser URL | `""` |
| `webapp.jitsu.browserWriteKey` | Jitsu browser write key | `""` |
| `webapp.podAnnotations` | Annotations to add to pods | `{}` |
| `webapp.podLabels` | Labels to add to pods | `{}` |
| `webapp.podSecurityContext` | Security context for pods | `{}` |
| `webapp.securityContext` | Security context for containers | `{}` |
| `webapp.service.type` | Service type | `ClusterIP` |
| `webapp.service.port` | Service port | `80` |
| `webapp.service.targetPort` | Target port for the service | `4200` |
| `webapp.ingress.enabled` | Enable Ingress | `false` |
| `webapp.ingress.className` | Ingress class name | `""` |
| `webapp.ingress.annotations` | Annotations for Ingress | `{}` |
| `webapp.ingress.hosts` | List of Ingress hosts | `[{"host": "chart-example.local", "paths": [{"path": "/", "pathType": "ImplementationSpecific"}]}]` |
| `webapp.ingress.tls` | TLS configuration for Ingress | `[]` |
| `webapp.resources` | Resource requests and limits | `{}` |
| `webapp.nodeSelector` | Node labels for pod assignment | `{}` |
| `webapp.tolerations` | Toleration labels for pod assignment | `[]` |
| `webapp.affinity` | Affinity settings for pod assignment | `{}` |
| `api.replicaCount` | Number of ever-gauzy API replicas | `1` |
| `api.image.repository` | Repository for API image | `ghcr.io/ever-co/gauzy-api-demo` |
| `api.image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `api.image.tag` | Image tag | `"latest"` |
| `api.imagePullSecrets` | List of Docker registry secret names | `[]` |
| `api.nameOverride` | Override name for the chart | `""` |
| `api.fullnameOverride` | Override full name for the chart | `""` |
| `api.envs` | List of environment variables | `[]` |
| `api.serviceAccount.create` | Create a service account | `true` |
| `api.serviceAccount.automount` | Automatically mount a ServiceAccount's API credentials | `true` |
| `api.serviceAccount.annotations` | Annotations to add to the service account | `{}` |
| `api.serviceAccount.name` | Name of the service account | `""` |
| `api.loglevel` | Log level for the API | `"info"` |
| `api.adminPasswordReset` | Enable or disable admin password reset feature | `true` |
| `api.allowSuperAdminRole` | Allow or disallow users with super admin role | `true` |
| `api.sentry.sentryDsn` | Sentry DSN (Data Source Name) | `""` |
| `api.sentry.sentryHttpTracingEnabled` | Enable or disable Sentry HTTP tracing | `false` |
| `api.sentry.sentryPostgresTrackingEnabled` | Enable or disable Sentry Postgres tracking | `false` |
| `api.jwt.jwtSecret` | Secret key for JWT | `"changeMe"` |
| `api.jwt.jwtRefreshTokenSecret` | Refresh token secret for JWT | `"changeMe"` |
| `api.jwt.jwtRefreshTokenExpirationTime` | Expiration time for JWT refresh tokens in seconds | `"86400"` |
| `api.s3.awsAccessKeyId` | AWS Access Key ID for S3 | `""` |
| `api.s3.awsSecretAccessKey` | AWS Secret Access Key for S3 | `""` |
| `api.s3.awsRegion` | AWS region for S3 | `""` |
| `api.s3.awsS3Bucket` | AWS S3 bucket name | `""` |
| `api.wasabiS3.wasabiAccessKeyId` | Wasabi Access Key ID | `""` |
| `api.wasabiS3.wasabiSecretAccessKey` | Wasabi Secret Access Key | `""` |
| `api.wasabiS3.wasabiRegion` | Wasabi region | `""` |
| `api.wasabiS3.wasabiServiceUrl` | Wasabi Service URL | `""` |
| `api.wasabiS3.wasabiS3Bucket` | Wasabi S3 bucket name | `""` |
| `api.mailConfig.mailFromAddress` | Email address used in the 'From' field | `""` |
| `api.mailConfig.mailHost` | Mail server host | `""` |
| `api.mailConfig.mailPort` | Mail server port | `""` |
| `api.mailConfig.mailUserName` | Username for mail authentication | `""` |
| `api.mailConfig.mailPassword` | Password for mail authentication | `""` |
| `api.googleAuth.gClientId` | Google Client ID | `""` |
| `api.googleAuth.gClientSecret` | Google Client Secret | `""` |
| `api.googleAuth.gCallbackUrl` | Callback URL for Google authentication | `""` |
| `api.facebookAuth.fbClientId` | Facebook Client ID | `""` |
| `api.facebookAuth.fbClientSecret` | Facebook Client Secret | `""` |
| `api.facebookAuth.fbGraphVersion` | Facebook Graph API version | `""` |
| `api.facebookAuth.fbCallbackUrl` | Callback URL for Facebook authentication | `""` |
| `api.gauzyAi.graphqlEndpoint` | GraphQL endpoint for Gauzy AI | `""` |
| `api.gauzyAi.restEndpoint` | REST endpoint for Gauzy AI | `""` |
| `api.unleash.unleashAppName` | Unleash application name | `""` |
| `api.unleash.unleashApiUrl` | Unleash API URL | `""` |
| `api.unleash.unleashInstanceId` | Unleash instance ID | `""` |
| `api.unleash.unleashRefreshInterval` | Unleash refresh interval | `""` |
| `api.unleash.unleashMatricsInterval` | Unleash metrics interval | `""` |
| `api.unleash.unleashApiKey` | Unleash API key | `""` |
| `api.pm2.pm2PublicKey` | PM2 public key | `""` |
| `api.pm2.pm2SecretKey` | PM2 secret key | `""` |
| `api.pm2.pm2MachineName` | PM2 machine name | `""` |
| `api.jitsu.serverUrl` | Jitsu server URL | `""` |
| `api.jitsu.serverWriteKey` | Jitsu server write key | `""` |
| `api.gitHub.githubClientId` | GitHub Client ID | `""` |
| `api.gitHub.githubClientSecret` | GitHub Client Secret | `""` |
| `api.gitHub.githubWebhookUrl` | GitHub webhook URL | `""` |
| `api.gitHub.githubWebhookSecret` | GitHub webhook secret | `""` |
| `api.gitHub.githubAppPrivateKey` | GitHub App private key | `""` |
| `api.gitHub.githubAppId` | GitHub App ID | `""` |
| `api.gitHub.githubAppName` | GitHub App name | `""` |
| `api.gitHub.githubCallbackUrl` | GitHub callback URL | `""` |
| `api.gitHub.githubPostInstallUrl` | GitHub post-installation URL | `""` |
| `api.podAnnotations` | Annotations to add to pods | `{}` |
| `api.podLabels` | Labels to add to pods | `{}` |
| `api.podSecurityContext` | Security context for pods | `{}` |
| `api.securityContext` | Security context for containers | `{}` |
| `api.service.type` | Service type | `ClusterIP` |
| `api.service.port` | Service port | `80` |
| `api.service.targetPort` | Target port for the service | `3000` |
| `api.ingress.enabled` | Enable Ingress | `false` |
| `api.ingress.className` | Ingress class name | `""` |
| `api.ingress.annotations` | Annotations for Ingress | `{}` |
| `api.ingress.hosts` | List of Ingress hosts | `[{"host": "chart-example.local", "paths": [{"path": "/", "pathType": "ImplementationSpecific"}]}]` |
| `api.ingress.tls` | TLS configuration for Ingress | `[]` |
| `api.resources` | Resource requests and limits | `{}` |
| `api.nodeSelector` | Node labels for pod assignment | `{}` |
| `api.tolerations` | Toleration labels for pod assignment | `[]` |
| `api.affinity` | Affinity settings for pod assignment | `{}` |
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
helm install ever-co/ever-gauzy --name my-release \
  --set global.env.production=true
$ # Helm 3
helm install my-release ever-co/ever-gauzy \
  --set global.env.production=true
```

Alternatively, a YAML file that specifies the values for the parameters can be
provided while installing the chart. For example:

```console
$ # Helm 2
helm install ever-co/ever-gauzy --name my-release -f values.yaml
$ # Helm 3
helm install my-release ever-co/ever-gauzy -f values.yaml
```

> **Tip**: You can use the default [values.yaml](https://github.com/ever-co/ever-gauzy-charts/blob/develop/charts/ever-co/values.yaml) and look on [examples](https://github.com/ever-co/ever-gauzy-charts/tree/develop/charts/ever-co/examples).

