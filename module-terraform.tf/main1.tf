 provider "aws" {
   region = "us-east-1"
 }

 variable "ami" {
   description = "value"
 }

 variable "instance_type" {
   description = "value"
 }

 module "ec2_instance" {
   source = "./module-terraform.tf"
   ami    =var.ami
 instance =var.instance_type}