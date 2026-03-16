/*provider "aws" {
  version = "~> 2.54"
  region  = "us-east-1"
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

provider "digitalocean" {}

terraform {
    required_version = "0.12.31"
}
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.54"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_eip" "kplabs_app_ip" {
  vpc = true
}
