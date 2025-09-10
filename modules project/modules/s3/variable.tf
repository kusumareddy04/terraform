variable "bucket" {

description = "The name of the s3 bucket"
type = string
}

variable "acl" {

description = "The ACL for the S3 bucket"

type = string

default = "private"

}
