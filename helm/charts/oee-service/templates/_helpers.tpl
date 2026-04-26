{{- define "oee-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "oee-service.labels" -}}
app.kubernetes.io/name: oee-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: energy
{{- end -}}

{{- define "oee-service.selectorLabels" -}}
app.kubernetes.io/name: oee-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
