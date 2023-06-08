variable "vpc_cidr" {
}

variable "vpc_name" {
}

variable "public_cidrs" {
}

variable "public_subnet_names" {
  default = ["public-a", "public-b", "public-c"]
}

variable "private_cidrs" {
}

variable "private_subnet_names" {
  default = ["private-a", "private-b", "private-c"]
}

variable "private_route_names" {
  default = ["Private Route AZ A", "Private Route AZ B", "Private Route AZ C"]
}

variable "enable_dns_hostnames" {
  default = "false"
}

variable "enable_dns_support" {
  default = "true"
}

variable "private_subnet_tags" {
  default = {}
}
variable "public_subnet_tags" {
  default = {}
}
