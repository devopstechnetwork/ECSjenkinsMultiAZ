variable "public_web_subnets_cidr" {
  type    = "list"
  default = ["10.20.0.0/24", "10.20.1.0/24"]
}

variable "private_rds_subnet_cidr" {
  type    = "list"
  default = ["10.20.2.0/24", "10.20.3.0/24"]
}

variable "azs" {
  type ="list"
  default = ["ap-south-1a", "ap-south-1b"]
}

# Get list of Availability Zones based on provider region
data "aws_availability_zones" "azs" {}

variable "vpc_id" {}

data "aws_subnet_ids" "idList" {
  vpc_id = "${var.vpc_id}"
}

data "aws_subnet" "subnetsIds" {
  id    = "${data.aws_subnet_ids.idList.ids}"
}