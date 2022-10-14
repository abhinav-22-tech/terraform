# Variable Section <-- move this later 

variable "ami" { default = "ami-0f924dc71d44d23e2"}
variable "instance_type" { default = "t2.micro"}
# variable "count" { default = "1"}
variable "ip_address" { default = "true"}
variable "volume_size" { default = "35"}
variable "name" { default = "abhinav"}
variable "project" { default = "terraform"}
variable "environment" { default = "dev"}
variable "region" { default = "us-east-2"}