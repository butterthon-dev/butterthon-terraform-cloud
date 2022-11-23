resource "google_project_iam_custom_role" "role_terraform" {
  role_id     = "terraform"
  title       = "terraform"
  description = "Terraform用のカスタムロール"
  permissions = [
    "compute.networks.create",
  ]
}
