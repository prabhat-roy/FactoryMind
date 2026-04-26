controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/factorymind" }
}
worker {
  name = "worker-factorymind-1"
  controllers = ["controller-1.boundary.factorymind.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/factorymind-boundary"
}
