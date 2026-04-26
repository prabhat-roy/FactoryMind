{{- define "predictive-maintenance.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "predictive-maintenance.labels" -}}
app.kubernetes.io/name: predictive-maintenance
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: maintenance
{{- end -}}

{{- define "predictive-maintenance.selectorLabels" -}}
app.kubernetes.io/name: predictive-maintenance
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
