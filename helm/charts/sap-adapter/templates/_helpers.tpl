{{- define "sap-adapter.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sap-adapter.labels" -}}
app.kubernetes.io/name: sap-adapter
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: erp-integration
{{- end -}}

{{- define "sap-adapter.selectorLabels" -}}
app.kubernetes.io/name: sap-adapter
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
