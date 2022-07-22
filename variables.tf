variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  default = "test_name"
}

variable "enable_dns_hostnames" {
  default = "false"
}

variable "enable_dns_support" {
  default = "true"
}

variable "public_subnet_a_cidr" {
  default = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  default = "10.0.2.0/24"
}

variable "public_subnet_c_cidr" {
  default = "10.0.3.0/24"
}

variable "private_subnet_a_cidr" {
  default = "10.0.4.0/24"
}
variable "private_subnet_b_cidr" {
  default = "10.0.5.0/24"
}
variable "private_subnet_c_cidr" {
  default = "10.0.6.0/24"
}

variable "private_subnet_tags" {
  default = {}
}
variable "public_subnet_tags" {
  default = {}
}
