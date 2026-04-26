package main

deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.containers[_].resources.limits.memory
  msg := "container missing resources.limits.memory"
}

deny[msg] {
  input.kind == "Deployment"
  c := input.spec.template.spec.containers[_]
  not startswith(c.image, "harbor.factorymind.internal/")
  msg := sprintf("image %s not from harbor.factorymind.internal", [c.image])
}
