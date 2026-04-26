{{- define "revision-control.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "revision-control.labels" -}}
app.kubernetes.io/name: revision-control
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: plm
{{- end -}}

{{- define "revision-control.selectorLabels" -}}
app.kubernetes.io/name: revision-control
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
