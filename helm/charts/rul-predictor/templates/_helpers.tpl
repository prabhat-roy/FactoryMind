{{- define "rul-predictor.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "rul-predictor.labels" -}}
app.kubernetes.io/name: rul-predictor
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: maintenance
{{- end -}}

{{- define "rul-predictor.selectorLabels" -}}
app.kubernetes.io/name: rul-predictor
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
