terraform {
  required_version = "~> 1.8"
}

# Create a Firebase Web App in the new project created above.
resource "google_firebase_web_app" "default" {
  provider        = google-beta
  project         = var.project_id
  display_name    = var.app_name
  deletion_policy = "DELETE"
}

data "google_firebase_web_app_config" "default" {
  provider     = google-beta
  project      = var.project_id
  web_app_id   = var.app_id
}

