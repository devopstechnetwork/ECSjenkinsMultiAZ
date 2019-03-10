#  Setup Public subnets for Webserver
# Add 2 public subnets
resource "aws_subnet" "public_web_subnets" {
  count                   = "${length(var.public_web_subnets_cidr)}"
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public_web_subnets_cidr[count.index]}"
  availability_zone       = "${data.aws_availability_zones.azs.names[count.index]}"
  map_public_ip_on_launch = true
  tags {
    Name = "PublicSubnet-${count.index + 1}"
  }
}


output "public_web_subnets_ids" {
  value = ["${data.aws_subnet.subnetsIds.*.id}"]
}

