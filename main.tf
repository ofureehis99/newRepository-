provider "aws" {      # Defining the Provider Amazon  as we need to run this on AWS   
  region = "us-east-1"
}
# Resource Block
resource "aws_instance" "my-machine" {
  count = 4     # Here we are creating identical 4 machines.
  
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "my-machine-${count.index}"
         }
}
