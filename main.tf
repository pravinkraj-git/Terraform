#Configure the AWS provider

provider "aws"{
    region = "eu-west-2"
}

#Configure virtual machine instance

resource "aws_instance" "Terraforminstance" {
    ami = "ami-0eb260c4d5475b901"
    instance_type = "t2.micro"
    key_name = "PKUK"
    tags = {
    Name = "Terraform"
    } 
}

