

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.10"
    }
  }

  backend "gcs" {
    bucket = "dauphine-tp-tfstate"
  }

  required_version = ">= 1.0"
}



provider "google" {
    project = "devops-tp2-399708"
}