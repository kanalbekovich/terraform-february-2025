provider aws {
    region = "us-east-1"
}

module "vpc" {
  source  = "git@github.com:kanalbekovich/terraform-aws-vpc.git?ref=v0.1.0"

  vpc_cidr = "172.31.0.0/16"
  subnet1_cidr = "172.31.1.0/24"
  # subnet2_cidr = "172.31.2.0/24"
  environment = "stage"
}