
# Add Route table for public subnets
resource "aws_route_table" "web_rt" {
  vpc_id = "${var.vpc_id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${var.igw_id}"
  }
  tags {
    Name = "My_Jenkins_Web_Routetable"
  }
}

resource "aws_route_table_association" "web_rt_association" {
  count          = 2
  subnet_id      = "${element(var.public_web_subnets_ids[count.index],count.index)}"
  route_table_id = "${aws_route_table.web_rt.id}"
}

