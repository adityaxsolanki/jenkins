provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0953476d60561c955"  # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  key_name      = "keypair"          # Replace with your EC2 key pair

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}
