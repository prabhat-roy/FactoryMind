{{- define "yield-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "yield-analytics.labels" -}}
app.kubernetes.io/name: yield-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: analytics
{{- end -}}

{{- define "yield-analytics.selectorLabels" -}}
app.kubernetes.io/name: yield-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
