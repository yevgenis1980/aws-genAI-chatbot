output "vpc_id" {
  value = module.network.vpc_id
}

output "lambda_role_arn" {
  value = module.iam.lambda_role_arn
}

output "chat_api_endpoint" {
  value = module.api.graphql_endpoint
}

output "frontend_url" {
  value = module.frontend.cloudfront_domain
}
