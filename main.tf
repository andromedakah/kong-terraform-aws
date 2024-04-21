provider "aws" {
  region  = "eu-west-3"
  profile = "saml"
}

module "kong" {
  source = "github.com/andromedakah/kong-terraform-aws?ref=3.5"

  vpc_id                = "vpc-0ab9f0f33d3efc1d7"
  environment           = "test"
  service               = "kong-gateway"
  ec2_key_name          = ""
  ssl_cert_external     = "*.kong-cx.com"
  ssl_cert_internal     = "*.kong-cx.com"
  ssl_cert_admin        = "*.kong-cx.com"
  ssl_cert_manager      = "*.kong-cx.com"
  ssl_cert_portal       = "*.kong-cx.com"

  ec2_ami= {
    "eu-west-3" = "ami-00c71bd4d220aa22a"
  }

  tags = {
     Owner = "412431539555"
    #  Team = "DevOps"
  }
}