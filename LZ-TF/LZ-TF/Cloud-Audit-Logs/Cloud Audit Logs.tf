terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "google" {}

provider "lacework" {}

module "gcp_project_level_audit_log" {
  source               = "lacework/audit-log/gcp"
  version              = "~> 3.0"
  bucket_force_destroy = true
  enable_ubla          = true
  lifecycle_rule_age   = 7
}