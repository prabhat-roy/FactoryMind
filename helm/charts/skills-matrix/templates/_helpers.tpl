{{- define "skills-matrix.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "skills-matrix.labels" -}}
app.kubernetes.io/name: skills-matrix
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: factorymind
factorymind.io/domain: workforce
{{- end -}}

{{- define "skills-matrix.selectorLabels" -}}
app.kubernetes.io/name: skills-matrix
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
