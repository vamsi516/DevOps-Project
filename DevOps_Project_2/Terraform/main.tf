data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.3.20240304.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.amazon-linux.id
  instance_type = "t3.micro"
  key_name = "project_key"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
