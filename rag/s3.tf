
resource "aws_s3_bucket" "documents" {
bucket = "${var.project_name}-documents-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
byte_length = 4
}
