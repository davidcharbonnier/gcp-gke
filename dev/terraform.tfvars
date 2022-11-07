clusters = {
  infra-hosting = {
    cluster_autoscaling = null
    description = "Infra hosting"
    dns_domain  = null
    labels      = null
    location    = "northamerica-northeast1-b"
    net = {
      master_range = "172.16.33.0/28"
      pods         = "pods"
      services     = "services"
      subnet       = "projects/dch-dev-net-spoke-0/regions/northamerica-northeast1/subnetworks/dev-gke-infra-hosting-nane1"
    }
    overrides = null
  }
}

nodepools = {
  infra-hosting = {
    nodepool = {
      initial_node_count = null
      node_count         = 3
      node_type          = "e2-medium"
      overrides          = null
      spot               = true
    }
  }
}

iam = {
  "roles/container.developer" = [
    "serviceAccount:terraform@dch-dev-infra-hosting-0.iam.gserviceaccount.com"
  ]
}