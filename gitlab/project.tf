resource "gitlab_project" "bind9" {
  name             = "bind9"
  description      = "Internal DNS (BIND9) for the home zone"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "traefik" {
  name             = "traefik"
  description      = "Reverse proxy and TLS for every service"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "renovate" {
  name             = "renovate"
  description      = "Self-hosted Renovate CE for dependency updates"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "gitlab" {
  name             = "gitlab"
  description      = "Self-hosted GitLab CE: compose file and configuration"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "gitlab-runner" {
  name             = "gitlab-runner"
  description      = "GitLab Runner with the Docker executor"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "homarr" {
  name             = "homarr"
  description      = "Dashboard (archived: moved to the gitops repo)"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
  archived         = true
}

resource "gitlab_project" "terraform" {
  name             = "terraform"
  description      = "Terraform managing this GitLab's projects and settings"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "checkmk" {
  name             = "checkmk"
  description      = "Checkmk monitoring (archived: replaced by Prometheus)"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
  archived         = true
}

resource "gitlab_project" "n8n" {
  name             = "n8n"
  description      = "Workflow automation (archived: moved to the gitops repo)"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
  archived         = true
}

resource "gitlab_project" "ci-templates" {
  name             = "ci-templates"
  description      = "Shared CI/CD templates"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}

resource "gitlab_project" "gitops" {
  name                                  = "gitops"
  description                           = "Kubernetes manifests deployed by ArgoCD"
  namespace_id                          = data.gitlab_group.Homelab.id
  visibility_level                      = "private"
  only_allow_merge_if_pipeline_succeeds = true
}

resource "gitlab_project" "ansible" {
  name             = "ansible"
  description      = "Ansible playbook configuring the VPS and the home VM"
  namespace_id     = data.gitlab_group.Homelab.id
  visibility_level = "private"
}
