provider "aws" {
  region = "us-east-1"
}

resource "aws_api_gateway_rest_api" "my_api" {
  name        = "my-api"
  description = "My RESTful API"
}

resource "aws_api_gateway_resource" "my_resource" {
  rest_api_id = aws_api_gateway_rest_api.my_api.id
  parent_id   = aws_api_gateway_rest_api.my_api.root_resource_id
  path_part   = "my-resource"
}

resource "aws_api_gateway_method" "my_method" {
  rest_api_id   = aws_api_gateway_rest_api.my_api.id
  resource_id   = aws_api_gateway_resource.my_resource.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "my_integration" {
  rest_api_id             = aws_api_gateway_rest_api.my_api.id
  resource_id             = aws_api_gateway_resource.my_resource.id
  http_method             = aws_api_gateway_method.my_method.http_method
  integration_http_method = "GET"
  type                    = "HTTP"
  uri                     = "http://localhost:3000" // Altere para a URL da sua API
}

resource "aws_api_gateway_deployment" "my_deployment" {
  depends_on    = [aws_api_gateway_integration.my_integration]
  rest_api_id   = aws_api_gateway_rest_api.my_api.id
  stage_name    = "prod"
  description   = "Production deployment"
}
