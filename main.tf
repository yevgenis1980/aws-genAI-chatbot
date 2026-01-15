
module "network" {
source = "./network"

project_name = var.project_name
vpc_cidr = var.vpc_cidr
public_subnets = var.public_subnets
private_subnets = var.private_subnets
}

module "iam" {
source = "./iam"

project_name = var.project_name
}
