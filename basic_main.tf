terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }

}

provider "aws" {
  region = "ap-southeast-2"
}


# resource "aws_instance" "rw_instance" {
#     ami = "ami-0df4b2961410d4cff"  # Ubuntu, 22.04 LTS
#     instance_type = "t2.micro"
  
# }


resource "aws_s3_bucket" "bronze_layer" {
    bucket = "bronze-layer34"
    # acl = "private"
}

