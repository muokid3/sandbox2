
provider "aws" {
  profile = "muokid3"
  region  = "eu-west-2"
}

module "dev" {
  name             = var.name
  source           = "./lab"
  key_name         = var.key_name
  public_key_path  = var.public_key_path
  private_key_path = var.private_key_path
  instance_type    = var.instance_type
}

