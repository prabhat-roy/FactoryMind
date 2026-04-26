{{- define "shift-handover-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "shift-handover-service.labels" -}}
app.kubernetes.io/name: shift-handover-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: mes
{{- end -}}

{{- define "shift-handover-service.selectorLabels" -}}
app.kubernetes.io/name: shift-handover-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
