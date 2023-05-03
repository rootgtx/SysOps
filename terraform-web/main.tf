provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0889a44b331db0194" 
  instance_type = "t2.micro" 

  subnet_id = "subnet-0b11ae4970522329a" 

  vpc_security_group_ids = [
    "sg-0dfb07f20e376fac8" 
  ]

  root_block_device {
    volume_size = 8 
    volume_type = "gp3" 
  }

  ebs_block_device {
    device_name = "/dev/xvdb"
    volume_size = 10
    volume_type = "gp3"
  }

  key_name = "desafio"

  tags = {
    Name = "web"
  }
}
