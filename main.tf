provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-00a929b66ed6e0de6"
instance_type = "t2.medium"
key_name = "terr-key"
vpc_security_group_ids = ["sg-0233e8710636d4236"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
