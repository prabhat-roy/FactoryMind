{{- define "batch-record-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "batch-record-service.labels" -}}
app.kubernetes.io/name: batch-record-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: compliance
{{- end -}}

{{- define "batch-record-service.selectorLabels" -}}
app.kubernetes.io/name: batch-record-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
