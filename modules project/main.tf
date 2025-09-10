provider "aws" {

region = "ap-south-1"

}

module "vpc" {

source = "./modules/vpc"

cidr_block = "192.168.0.0/16"

vpc_name = "my-vpc"

}

module "ec2-instances" {

source = "./modules/ec2-instances"

ami = "ami-018046b953a698135"

instance_type = "t2.micro"
subnet_id = module.vpc.subnet_id

instance_name = "tf-server"

}

module "s3_bucket" {

source = "./modules/s3-bucket"
bucket = "kusuma-bkt-tf-test-ram"
acl = "private"

}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "instance_id" {

value = module.ec2-instances.instance_id

}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}


