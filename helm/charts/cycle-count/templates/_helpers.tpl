{{- define "cycle-count.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cycle-count.labels" -}}
app.kubernetes.io/name: cycle-count
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: warehouse
{{- end -}}

{{- define "cycle-count.selectorLabels" -}}
app.kubernetes.io/name: cycle-count
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
