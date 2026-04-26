{{- define "mqtt-broker-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mqtt-broker-service.labels" -}}
app.kubernetes.io/name: mqtt-broker-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: iiot
{{- end -}}

{{- define "mqtt-broker-service.selectorLabels" -}}
app.kubernetes.io/name: mqtt-broker-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
