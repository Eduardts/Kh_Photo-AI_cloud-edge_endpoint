# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_s3_bucket" "image_storage" {
  bucket = "cloudimage-storage"
}

resource "aws_lambda_function" "image_processor" {
  filename         = "lambda.zip"
  function_name    = "image-processor"
  role             = aws_iam_role.lambda_role.arn
  handler          = "index.handler"
  runtime          = "nodejs14.x"
}

