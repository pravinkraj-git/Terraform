#Configure the AWS provider

provider "aws"{
    region = "eu-west-2"
    access_key = "AKIA6OKCNSVQGMSXLCY4"
    secret_key = "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"
}

#Configure virtual machine instance

resource "aws_instance" "myfirsttfvm1" {
    ami = "ami-0eb260c4d5475b901"
    instance_type = "t2.micro"
    key_name = "PKUK"
    tags = {
    Name = "Ubuntu-Kube1"
    } 
}

resource "aws_instance" "myfirsttfvm2" {
    ami = "ami-0eb260c4d5475b901"
    instance_type = "t2.micro"
    key_name = "PKUK"
    tags = {
    Name = "Ubuntu-Kube2"
    } 
}

