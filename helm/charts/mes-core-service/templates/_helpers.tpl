{{- define "mes-core-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mes-core-service.labels" -}}
app.kubernetes.io/name: mes-core-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: mes
{{- end -}}

{{- define "mes-core-service.selectorLabels" -}}
app.kubernetes.io/name: mes-core-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
