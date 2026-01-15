
resource "aws_lambda_function" "embeddings" {
function_name = "${var.project_name}-embeddings"
role = module.iam.lambda_role_arn
handler = "handler.main"
runtime = "python3.11"


filename = "lambda/embeddings.zip"


environment {
variables = {
MODEL_ID = "amazon.titan-embed-text-v1"
COLLECTION = aws_opensearchserverless_collection.vector.name
}
}
}
