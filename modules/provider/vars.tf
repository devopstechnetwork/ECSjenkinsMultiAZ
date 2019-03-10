#AWS Provider
variable "access_key" {
  description = "The AWS access key."
  default = "AKIAI5A25NCWLFSX4CDQ"
}

variable "secret_key" {
  description = "The AWS secret key."
  default ="2Fj5fSr2Uh+2FZVOVO4h9wdBkPBJuyzwGnfvETQD"
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  default = "us-east-1"
}
