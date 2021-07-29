resource "aws_instance" "myserver" {
ami = var.ami
instance_type = var.i_type
tags = {
    Name = upper("haritha-app-instance")
}
}

module "s3" {
    source = "./modules/s3-module"
    bucket_name = var.bucket
}