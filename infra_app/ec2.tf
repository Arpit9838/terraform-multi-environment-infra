resource "aws_key_pair" "my_key_pair" {
  key_name   = "${var.env}-infra-app-key"
  public_key = file("terra-key-ec2.pub")
  tags = {
    Environment = var.env
  }
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-infra-app-sg"
  vpc_id     = aws_default_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH access"
  }

   egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.env}-infra-app-sg"
   #  Environment = var.env
  }
}

# Create an EC2 instance
resource "aws_instance" "my_instance" {
   count = var.instance_count
  ami           = var.ec2_ami_id
  instance_type = var.instance_type

root_block_device {
  volume_size = var.env == "prd" ? 20 : 10
  volume_type = "gp3"
}

  tags = {
    Name  = "${var.env}-infra-app-instance-${count.index + 1}"
    Environment = var.env
  }
}