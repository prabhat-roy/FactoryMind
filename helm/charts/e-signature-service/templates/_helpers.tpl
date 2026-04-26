{{- define "e-signature-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "e-signature-service.labels" -}}
app.kubernetes.io/name: e-signature-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: identity
{{- end -}}

{{- define "e-signature-service.selectorLabels" -}}
app.kubernetes.io/name: e-signature-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
