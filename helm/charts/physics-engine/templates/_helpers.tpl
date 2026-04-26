{{- define "physics-engine.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "physics-engine.labels" -}}
app.kubernetes.io/name: physics-engine
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: digital-twin
{{- end -}}

{{- define "physics-engine.selectorLabels" -}}
app.kubernetes.io/name: physics-engine
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
