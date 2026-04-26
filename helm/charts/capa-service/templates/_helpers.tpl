{{- define "capa-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "capa-service.labels" -}}
app.kubernetes.io/name: capa-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: quality
{{- end -}}

{{- define "capa-service.selectorLabels" -}}
app.kubernetes.io/name: capa-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
