{{- define "mtconnect-adapter.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mtconnect-adapter.labels" -}}
app.kubernetes.io/name: mtconnect-adapter
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: iiot
{{- end -}}

{{- define "mtconnect-adapter.selectorLabels" -}}
app.kubernetes.io/name: mtconnect-adapter
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
