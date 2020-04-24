resource "aws_s3_bucket" "s3backend" {
  bucket="ivana-s3-backend-course"
  versioning={
    enabled=true
  }
  force_destroy=true
}
