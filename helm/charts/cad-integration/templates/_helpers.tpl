{{- define "cad-integration.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cad-integration.labels" -}}
app.kubernetes.io/name: cad-integration
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: plm
{{- end -}}

{{- define "cad-integration.selectorLabels" -}}
app.kubernetes.io/name: cad-integration
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
