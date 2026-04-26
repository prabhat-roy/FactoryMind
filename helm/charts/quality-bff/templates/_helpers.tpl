{{- define "quality-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "quality-bff.labels" -}}
app.kubernetes.io/name: quality-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: platform
{{- end -}}

{{- define "quality-bff.selectorLabels" -}}
app.kubernetes.io/name: quality-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
