locals {
  project_id = "abount-me"
}

module "gcs_buckets" {
  source     = "terraform-google-modules/cloud-storage/google"
  version    = "~> 2.2"
  project_id = local.project_id

  names         = ["${local.project_id}-django-test"]
  prefix        = ""
  storage_class = "STANDARD"
  location      = "asia-northeast1"
  versioning    = {}

  # Grant roles/storage.objectAdmin role to admins and bucket_admins.
  set_admin_roles = false

  # granted roles/storage.objectAdmin on all buckets.
  admins = []

  # granted roles/storage.objectAdmin on per-buckets.
  bucket_admins = {}

  labels = { app = "dev" }
}
