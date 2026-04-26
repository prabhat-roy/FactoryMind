{{- define "training-compliance.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "training-compliance.labels" -}}
app.kubernetes.io/name: training-compliance
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: workforce
{{- end -}}

{{- define "training-compliance.selectorLabels" -}}
app.kubernetes.io/name: training-compliance
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
