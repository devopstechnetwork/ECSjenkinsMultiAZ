
#  Setup Private subnets for RDS
# Add 2 private subnets

resource "aws_subnet" "private_rds_subnets" {
  count             = "${length(var.private_rds_subnet_cidr)}"
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.private_rds_subnet_cidr[count.index]}"
  availability_zone = "${data.aws_availability_zones.azs.names[count.index]}"

  tags {
    Name = "PrivateSubnet-${count.index + 1}"
  }
}


output "private_web_subnets_ids" {
  value = ["${data.aws_subnet.subnetsIds.*.id}"]
}