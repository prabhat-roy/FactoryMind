{{- define "admin-portal.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "admin-portal.labels" -}}
app.kubernetes.io/name: admin-portal
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: platform
{{- end -}}

{{- define "admin-portal.selectorLabels" -}}
app.kubernetes.io/name: admin-portal
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
