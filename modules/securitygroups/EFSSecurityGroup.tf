# Define the security group for EFSSecurityGroup

resource "aws_security_group" "EFSSecurityGroup" {
  name = "EFSSecurityGroup"
  description = "Security group for EFS mount target"

  ingress {
    from_port = 2049
    to_port = 2049
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id="${var.vpc_id}"

  tags {
    Name = "EFSSecurityGroup"
  }
}
