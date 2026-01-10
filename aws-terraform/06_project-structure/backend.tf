terraform {
  backend "s3" {
    bucket = "project-structure-bucket-rev-2324"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}