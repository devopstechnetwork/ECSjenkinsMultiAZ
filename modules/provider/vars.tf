#AWS Provider
variable "access_key" {
  description = "The AWS access key."
  default = ""
}

variable "secret_key" {
  description = "The AWS secret key."
  default =""
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  default = "us-east-1"
}
