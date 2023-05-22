provider "aws" {
  region = "us-east-1"  
}

resource "aws_lambda_function" "hello_world_lambda" {
  function_name = "hello-world-lambda"
  role          = aws_iam_role.lambda_exec_role.arn
  runtime       = "nodejs14.x"
  handler       = "index.handler"
  filename      = "hello_world_lambda.zip"
  source_code_hash = filebase64sha256("hello_world_lambda.zip")
}

resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda-exec-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_exec_policy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.lambda_exec_role.name
}
