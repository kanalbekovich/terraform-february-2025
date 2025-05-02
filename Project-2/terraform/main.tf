data "aws_ami" "wordpress" {
  most_recent = true
  filter {
    name   = "name"
    values = ["wordpress*"]
  }
  owners = ["self"]
}

terraform {
  backend "s3" {
    bucket = "kaizen-group-2"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}