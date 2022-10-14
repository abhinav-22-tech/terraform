resource "aws_s3_bucket" "bucket" {
  acl = "private"
  bucket = "my-private-bucket-abhinav"
  
  versioning {
    enabled = "true"
  }

  tags = {
    name = "my-private-bucket-abhinav"
  }
}
