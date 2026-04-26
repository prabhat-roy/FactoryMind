{{- define "quality-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "quality-analytics.labels" -}}
app.kubernetes.io/name: quality-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: analytics
{{- end -}}

{{- define "quality-analytics.selectorLabels" -}}
app.kubernetes.io/name: quality-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
