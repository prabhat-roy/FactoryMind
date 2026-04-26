{{- define "mrp-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mrp-service.labels" -}}
app.kubernetes.io/name: mrp-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: production-planning
{{- end -}}

{{- define "mrp-service.selectorLabels" -}}
app.kubernetes.io/name: mrp-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
