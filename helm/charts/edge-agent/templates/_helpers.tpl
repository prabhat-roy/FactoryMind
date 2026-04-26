{{- define "edge-agent.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "edge-agent.labels" -}}
app.kubernetes.io/name: edge-agent
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: iiot
{{- end -}}

{{- define "edge-agent.selectorLabels" -}}
app.kubernetes.io/name: edge-agent
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
