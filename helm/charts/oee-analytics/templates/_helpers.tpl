{{- define "oee-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "oee-analytics.labels" -}}
app.kubernetes.io/name: oee-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: analytics
{{- end -}}

{{- define "oee-analytics.selectorLabels" -}}
app.kubernetes.io/name: oee-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
