provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "ranji" {
count = 4
ami = "ami-0b86aaed8ef90e45f"
instance_type = "t2.medium"
key_name = "terr-key"
vpc_security_group_ids = ["sg-01680489c767e1dcd"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
