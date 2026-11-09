# terraform

Infrastructure as Code for my self-hosted GitLab itself: projects, the group,
memberships and project settings (such as "merge only if the pipeline
succeeds") are declared here and applied by a pipeline.

> A published snapshot of a repository that runs on my self-hosted GitLab.
> More about the lab: [homelab](https://github.com/MatejK97/homelab)

## Pipeline

- **Merge requests:** `terraform fmt -check`, `validate` and `plan`; the
  plan summary (to add / change / destroy) is shown in the MR.
- **`main`:** the saved plan is applied through a **manual** approval step,
  so nothing changes without the plan being reviewed.
- **State:** GitLab-managed Terraform state over the HTTP backend, with
  locking and version history, authenticated with the job's own CI token.
  MR plans run with `-lock=false`, so Renovate's MRs never hold the lock.
- **Least-privilege tokens:** plans use a read-only API token; the full-access
  token is a protected variable available only to `main` pipelines.
- **Reproducible:** the provider lock file is committed, and the Terraform
  version in CI is pinned to match local tooling.

## Notes

- Retired services are **archived** through Terraform (`archived = true`)
  rather than deleted, so their history stays readable.
- Drift between configuration and state was fixed with `terraform import`
  and `terraform state rm` instead of destroying live resources.
