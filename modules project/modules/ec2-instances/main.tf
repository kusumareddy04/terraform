
resource "aws_instance" "myinstance" {

ami = var.ami

instance_type = var.instance_type

subnet_id = var.subnet_id

tags = {

name = var.instance_name
}
}
