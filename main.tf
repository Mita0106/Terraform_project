provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL-vm-server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "Mita2_keypair"
  tags = {
    Name = "RHEL-Server"
  }
  root_block_device {
    volume_size = 15 
    volume_type = "gp3"
    encrypted   = true
  }

}

