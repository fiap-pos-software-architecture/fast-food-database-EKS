resource "aws_security_group" "security-group" {
  name        = "SG02-${var.projectName}"
  description = "Usado no EKS no projeto fast food"
  vpc_id      = data.aws_vpc.vpc.id

  # Inbound
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound
  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}