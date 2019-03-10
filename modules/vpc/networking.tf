# Add VPC
resource "aws_vpc" "my_jenkin_vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.vpc_tenancy}"

  tags {
    Name  = "My_Jenkins_VPC"
    Batch = "Jenkin Master Slave"
  }
}


output "vpc_id" {
  value = "${aws_vpc.my_jenkin_vpc.id}"
}

