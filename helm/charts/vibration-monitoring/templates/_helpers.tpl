{{- define "vibration-monitoring.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "vibration-monitoring.labels" -}}
app.kubernetes.io/name: vibration-monitoring
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: maintenance
{{- end -}}

{{- define "vibration-monitoring.selectorLabels" -}}
app.kubernetes.io/name: vibration-monitoring
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
