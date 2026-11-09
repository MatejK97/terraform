resource "gitlab_project_membership" "bind9" {
  project      = gitlab_project.bind9.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "renovate" {
  project      = gitlab_project.renovate.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "terraform" {
  project      = gitlab_project.terraform.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "traefik" {
  project      = gitlab_project.traefik.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "gitlab" {
  project      = gitlab_project.gitlab.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "gitlab-runner" {
  project      = gitlab_project.gitlab-runner.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "homarr" {
  project      = gitlab_project.homarr.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "checkmk" {
  project      = gitlab_project.checkmk.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "n8n" {
  project      = gitlab_project.n8n.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "ci-templates" {
  project      = gitlab_project.ci-templates.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "gitops" {
  project      = gitlab_project.gitops.id
  user_id      = 3
  access_level = "maintainer"
}

resource "gitlab_project_membership" "ansible" {
  project      = gitlab_project.ansible.id
  user_id      = 3
  access_level = "maintainer"
}
