variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "aws_region" {
  description = "AWS region"
  default = "us-east-2"
}

variable "lambda_deployment" {
  description = "Local path of the lambda deployment .zip file"
  default     = "build/lambda_deployment.zip"
}
