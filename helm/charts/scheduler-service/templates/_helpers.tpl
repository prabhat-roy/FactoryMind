{{- define "scheduler-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "scheduler-service.labels" -}}
app.kubernetes.io/name: scheduler-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: platform
{{- end -}}

{{- define "scheduler-service.selectorLabels" -}}
app.kubernetes.io/name: scheduler-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
