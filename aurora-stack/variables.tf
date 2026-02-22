variable "region" {
    description = "The AWS region to deploy"
    default = "ap-south-1"
  
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"  
}

variable "project_name" {
    default = "portfolio"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}