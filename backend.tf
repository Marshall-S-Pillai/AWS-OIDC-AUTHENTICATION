terraform {
  backend "s3" {
    bucket         = "powertool19087"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
