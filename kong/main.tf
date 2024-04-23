provider "aws" {
  region  = "eu-west-3"
  profile = "saml"
}

module "kong" {
  source = "github.com/andromedakah/kong-terraform-aws?ref=3.7"

  
}