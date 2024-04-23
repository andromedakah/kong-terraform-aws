provider "aws" {
  region  = "eu-west-3"
  profile = "saml"
}

module "kong" {
  source = "github.com/andromedakah/kong-terraform-aws?ref=3.7"

  vpc_id                = "vpc-04875e1f18d424767"
  environment           = "test"
  service               = "kong-gateway"
  ec2_key_name          = ""
  ssl_cert_external     = "*.kong-cx.com"
  ssl_cert_internal     = "*.kong-cx.com"
  ssl_cert_admin        = "*.kong-cx.com"
  ssl_cert_manager      = "*.kong-cx.com"
  ssl_cert_portal       = "*.kong-cx.com"

  ec2_ami= {
    "eu-west-3" = "ami-01bf5e7ea6da0b6e1"
  }

  tags = {
     Owner = "412431539555"
    #  Team = "DevOps"
  }
}