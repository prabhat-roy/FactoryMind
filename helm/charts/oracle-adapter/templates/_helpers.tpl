{{- define "oracle-adapter.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "oracle-adapter.labels" -}}
app.kubernetes.io/name: oracle-adapter
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: erp-integration
{{- end -}}

{{- define "oracle-adapter.selectorLabels" -}}
app.kubernetes.io/name: oracle-adapter
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
