{{/*
Expand the name of the chart.
*/}}
{{- define "gauzy-api.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gauzy-api.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "gauzy-api.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "gauzy-api.labels" -}}
helm.sh/chart: {{ include "gauzy-api.chart" . }}
{{ include "gauzy-api.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "gauzy-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gauzy-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "gauzy-api.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "gauzy-api.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create a variable based on demo env
*/}}
{{- define "gauzy-api.demoenv" -}}
{{- if not .Values.global.env.demo -}}
true
{{- else -}}
false
{{- end -}}
{{- end -}}
{{- define "gauzy-api.nodeenv" -}}
{{- if not .Values.global.env.demo -}}
development
{{- else -}}
production
{{- end -}}
{{- end -}}

{{/*
Set postgresql port
*/}}
{{- define "postgresql.servicePort" -}}
{{- if eq . "" -}}
  {{- printf "5432" -}}
{{- else -}}
  {{- printf . -}}
{{- end -}}
{{- end -}}