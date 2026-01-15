
resource "aws_iam_role" "lambda_role" {
name = "${var.project_name}-lambda-role"


assume_role_policy = jsonencode({
Version = "2012-10-17"
Statement = [
{
Effect = "Allow"
Principal = {
Service = "lambda.amazonaws.com"
}
Action = "sts:AssumeRole"
}
]
})
}


resource "aws_iam_role_policy_attachment" "basic_logs" {
role = aws_iam_role.lambda_role.name
policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}


resource "aws_iam_policy" "dynamo_access" {
name = "${var.project_name}-dynamo-access"


policy = jsonencode({
Version = "2012-10-17"
Statement = [
{
Effect = "Allow"
Action = [
"dynamodb:PutItem",
"dynamodb:GetItem",
"dynamodb:Query"
]
Resource = aws_dynamodb_table.chat_history.arn
}
]
})
}

resource "aws_iam_role_policy_attachment" "dynamo_attach" {
role = aws_iam_role.lambda_role.name
policy_arn = aws_iam_policy.dynamo_access.arn
}
