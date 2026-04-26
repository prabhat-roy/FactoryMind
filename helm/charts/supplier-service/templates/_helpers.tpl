{{- define "supplier-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "supplier-service.labels" -}}
app.kubernetes.io/name: supplier-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: supply-chain
{{- end -}}

{{- define "supplier-service.selectorLabels" -}}
app.kubernetes.io/name: supplier-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
