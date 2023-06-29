provider "aws" {
  region = "us-east-1"  # substitua pela sua região preferida
}

resource "aws_s3_bucket" "bucket" {
  bucket = "nome-do-seu-bucket"
  acl    = "private"  # define a permissão de acesso padrão como privada
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.id
}
