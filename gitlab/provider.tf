terraform {
  backend "http" {}
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "19.5.0"
    }
  }
}

provider "gitlab" {
  base_url = "https://gitlab.home.matthomelab.xyz/api/v4"
}

