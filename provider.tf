# Define AWS as our provider
provider "aws" {
  access_key = ""
  secret_key = ""
  region = "${var.aws_region}"
}
