terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-12345"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
  }
}

resource "null_resource" "test" {}





