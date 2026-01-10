
resource "aws_s3_bucket" "project-structure-bucket" {
    bucket = "project-structure-bucket-rev-2324"
    tags = {
      name = "project-structure-bucket"
    }
    force_destroy = true

}