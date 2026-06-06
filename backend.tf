backend "s3" {
  bucket = "terrainfra-bucket"
  key    = "./terraform.tfstate"
  region = "us-east-1"
  dynamodb_table = "TerraInfra-key"
}