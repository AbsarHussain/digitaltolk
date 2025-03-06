data "aws_ami" "latest_ubuntu" {
  most_recent = true
    #this ami needs to be present in the region of aws provider section region
  owners = ["self"]
  tags = {
    Name   = "ubuntu"
  }
}
data "aws_subnet" "public_subnet" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]  
  }
  tags = {
    Name   = var.public_subnet
  }
}
resource "aws_instance" "bastion" {
  ami           = data.aws_ami.latest_ubuntu.id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.public_subnet.id
  key_name      = var.key_name

  security_groups = [var.sg_id]

  tags = {
    Name = "Bastion EC2 instance"
  }

  associate_public_ip_address = false
}

