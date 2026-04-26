{{- define "supplier-quality-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "supplier-quality-service.labels" -}}
app.kubernetes.io/name: supplier-quality-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: quality
{{- end -}}

{{- define "supplier-quality-service.selectorLabels" -}}
app.kubernetes.io/name: supplier-quality-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
