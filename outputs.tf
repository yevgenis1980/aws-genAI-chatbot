
output "vpc_id" {
value = module.network.vpc_id
}

output "lambda_role_arn" {
value = module.iam.lambda_role_arn
}
