{{- define "carbon-tracker.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "carbon-tracker.labels" -}}
app.kubernetes.io/name: carbon-tracker
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: energy
{{- end -}}

{{- define "carbon-tracker.selectorLabels" -}}
app.kubernetes.io/name: carbon-tracker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
