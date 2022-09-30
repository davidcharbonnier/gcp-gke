clusters = {
  infra = {
    cluster_autoscaling = null
    description = "Infra hosting"
    dns_domain  = null
    labels      = null
    location    = "northamerica-northeast1-b"
    net = {
      master_range = "172.17.16.0/28"
      pods         = "pods"
      services     = "services"
      subnet       = "projects/dch-dev-net-spoke-0/regions/northamerica-northeast1/subnetworks/dev-gke-nodes-nane1"
    }
    overrides = null
  }
}

nodepools = {
  infra = {
    nodepool = {
      initial_node_count = null
      node_count         = 3
      node_type          = "e2-small"
      overrides          = null
      spot               = true
    }
  }
}
