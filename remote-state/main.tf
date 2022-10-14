resource "aws_s3_bucket" "remote_state" {
  bucket = "abhinav-remote-state-s3"

  versioning {
    enabled = true
  }

  tags = {
    name = "abhinav-remote-state"
  }
}