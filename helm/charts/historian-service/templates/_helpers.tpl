{{- define "historian-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "historian-service.labels" -}}
app.kubernetes.io/name: historian-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: iiot
{{- end -}}

{{- define "historian-service.selectorLabels" -}}
app.kubernetes.io/name: historian-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
