{{- define "opc-ua-gateway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "opc-ua-gateway.labels" -}}
app.kubernetes.io/name: opc-ua-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: iiot
{{- end -}}

{{- define "opc-ua-gateway.selectorLabels" -}}
app.kubernetes.io/name: opc-ua-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
