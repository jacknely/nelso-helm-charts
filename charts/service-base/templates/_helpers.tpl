{{/*
Expand the name of the chart.
*/}}
{{- define "base-service.name" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Used to set app name labels and for the datadog service.
*/}}
{{- define "base-service.appName" -}}
{{- default (include "base-service.name" .) .Values.appName }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "base-service.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "base-service.labels" -}}
helm.sh/chart: {{ include "base-service.chart" . }}
{{ include "base-service.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "base-service.selectorLabels" -}}
app: {{ include "base-service.appName" . }}
base-service-component: {{ include "base-service.name" . }}
base-service-name: {{ include "base-service.appName" . }}
base-service-stage: {{ .Values.stage }}
base-service-environment: {{ .Values.environment }}
base-service-org-unit: engineering
base-service-owner: {{ .Values.owner }}
{{- end }}
