
# terraform stores its state file in the s3 bucket andf enables us remote state file management

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

# follow offical guide https://developer.hashicorp.com/terraform/language/backend/s3 for detailed view