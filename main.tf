terraform {
  required_version = ">= 1.7.1"
}

provider "aws" {
  region              = var.region
  allowed_account_ids = [var.aws_id]
  profile             = "saberfs"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "aws_id" {
  type    = string
  default = "339712763379"
}

variable "ami" {
  type    = string
  default = "ami-0a23a9827c6dab833"
}

variable "public_subnet" {
  default = "CIDR public subnet"
  type    = string
}

variable "private_subnet" {
  default = "CIDR private subnet"
  type    = string
}

variable "subnets" {
  type        = list(string)
  description = "List of subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "sg_ingress_cidr" {
  description = "CDIR for ingress traffic"
  type = string
}

#variable "sg_ingress_cidr" {
#  description = "0.0.0.0/0"
#  type = string
#}

variable "enable_monitoring" {
  description = "Habilitar despliegue"
  type = number
}

variable "ingress_port_list" {
  description = "Lista de puertos"
  type = list(number)
}
