{{/*
Expand the name of the chart.
*/}}
{{- define "webapp.name" -}}
{{- printf "%s-%s" .Chart.Name "webapp" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "webapp.fullname" -}}
{{- if .Values.webapp.fullnameOverride }}
{{- .Values.webapp.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.webapp.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s-%s" .Release.Name $name "webapp" | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}
{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "webapp.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
{{/*
Common labels
*/}}
{{- define "webapp.labels" -}}
helm.sh/chart: {{ include "webapp.chart" . }}
{{ include "webapp.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "webapp.selectorLabels" -}}
app.kubernetes.io/name: {{ include "webapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
{{/*
Create the name of the service account to use
*/}}
{{- define "webapp.serviceAccountName" -}}
{{- if .Values.webapp.serviceAccount.create }}
{{- default (include "webapp.fullname" .) .Values.webapp.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.webapp.serviceAccount.name }}
{{- end }}
{{- end }}
{{/*
Create a variable based on demo env
*/}}
{{- define "ever-gauzy.demoenv" -}}
{{- if not .Values.webapp.env.demo -}}
true
{{- else -}}
false
{{- end -}}
{{- end -}}
{{- define "ever-gauzy.nodeenv" -}}
{{- if not .Values.webapp.env.demo -}}
development
{{- else -}}
production
{{- end -}}
{{- end -}}
