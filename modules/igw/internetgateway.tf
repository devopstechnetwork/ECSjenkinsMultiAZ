# Add Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = "${var.vpc_id}"
  tags {
    Name = "my-jenkin-igw"
  }
}

output "igw_id" {
  value = "${aws_internet_gateway.igw.id}"
}