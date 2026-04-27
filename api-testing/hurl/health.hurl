# Health check for all critical services
GET https://factorymind.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.factorymind.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
