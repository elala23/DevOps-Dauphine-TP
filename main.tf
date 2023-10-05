
resource "google_project_service" "cloudresource" {
    service = "cloudresourcemanager.googleapis.com"
    project= "devops-tp2-399708"
}

resource "google_project_service" "serviceusage" {
    service = "serviceusage.googleapis.com"
    project= " devops-tp2-399708"
    
}

resource "google_project_service" "artifact" {
    service = "artifactregistry.googleapis.com"
    project= "devops-tp2-399708"
   
}

resource "google_project_service" "sql" {
    service = "sqladmin.googleapis.com"
    project= "devops-tp2-399708"
 
}

resource "google_project_service" "cloudbuild" {
    service = "cloudbuild.googleapis.com"
    project= " devops-tp2-399708"
    
}


resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-central1"
  repository_id = "website-tools"
  description   = "repo Docker - wordpress"
  format        = "DOCKER"

  depends_on = [ google_project_service.artifact ]
}

resource "google_sql_user" "wordpress" {
   name     = "wordpress"
   instance = "main-instance"
   password = "ilovedevops"
}

resource "google_sql_database" "wordpress" {
   name     = "wordpress"
   instance = "main-instance"
   password = "ilovedevops"
}
