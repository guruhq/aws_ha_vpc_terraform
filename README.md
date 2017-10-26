# aws_ha_vpc_terraform 

A Terraform module that creates a HA two teired VPC in AWS. Both the public and the private subnets are in 3's split among AZ A B and C. The private subnets are each mapped to their own specific GW. 

## Useage 

```hcl
module "aws_ha_vpc" {
  source = "github.com/kgirthofer/aws_ha_vpc_terraform?ref=0.1.0"
  
  region   = "us-east-1"
  vpc_name = "test"
  vpc_cidr = "10.0.0.0/16"
  
  public_subnet_a_cidr  = "10.0.10.0/24"
  public_subnet_b_cidr  = "10.0.11.0/24"
  public_subnet_c_cidr  = "10.0.12.0/24"
  private_subnet_a_cidr = "10.0.13.0/24"
  private_subnet_b_cidr = "10.0.14.0/24"
  private_subnet_c_cidr = "10.0.15.0/24"
}
```

## Vairiables

- `region` - the region to launch the VPC into. (default `us-east-1`)
- `vpc_cidr` - the cidr notated ip space of the vpc.
- `vpc_name` - the name of the vpc. 
- `public_subnet_a_cidr` - cidr for public subnet a
- `public_subnet_b_cidr` - cidr for public subnet b
- `public_subnet_c_cidr` - cidr for public subnet c
- `private_subnet_a_cidr` - cidr for private subnet a
- `private_subnet_b_cidr` - cidr for private subnet b
- `private_subnet_c_cidr` - cidr for public subnet c

## Outputs

- `vpc_id` - the id of the vpc
