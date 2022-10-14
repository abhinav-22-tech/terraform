terraform {
  backend "s3"{
    encrypt = true
    bucket = "abhinav-remote-state-s3"
    key = "terraform.tfstate"
    region = "us-east-2"

  }
}