# Define the security group for JenkinsELBSecurityGroup
resource "aws_security_group" "JenkinsELBSecurityGroup" {
  name = "JenkinsELBSecurityGroup"
  description = "SecurityGroup for Jenkins ELB"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id="${aws_vpc.default.id}"

  tags {
    Name = "JenkinsELBSecurityGroup"
  }
}
