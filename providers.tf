terraform {
  required_version = ">= 0.15.0"

  required_providers {
    github = {
      source = "integrations/github"
      version = "4.9.3"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }
}
