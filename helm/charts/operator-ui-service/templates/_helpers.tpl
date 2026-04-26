{{- define "operator-ui-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "operator-ui-service.labels" -}}
app.kubernetes.io/name: operator-ui-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: mes
{{- end -}}

{{- define "operator-ui-service.selectorLabels" -}}
app.kubernetes.io/name: operator-ui-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
