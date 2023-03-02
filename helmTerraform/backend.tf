terraform {
  cloud {
    organization = "vandana-successive"
    workspaces {
      name = "module"
    }
  }
}