
variable "ami" {

description = "the ami id for the instance"
type = string

}

variable "instance_type" {

description = "ec2 instance type"

type = string

}

variable "subnet_id" {

description = "subnet id to launch the instance"

type = string

}

variable "instance_name" {

description = "name tag for the instance"

type = string

}
