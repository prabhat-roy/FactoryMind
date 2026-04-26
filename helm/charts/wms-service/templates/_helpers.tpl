{{- define "wms-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "wms-service.labels" -}}
app.kubernetes.io/name: wms-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: warehouse
{{- end -}}

{{- define "wms-service.selectorLabels" -}}
app.kubernetes.io/name: wms-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
