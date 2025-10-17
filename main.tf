module "dev_network" {
  source = "./infra-modules/network"
}

module "newec2" {
  source    = "./infra-modules/ec2"
  ami_id    = "ami-0341d95f75f311023"
  subnet_id = module.dev_network.pub_sub_ids[0] # calling the public subnet
}

module "avs-bucket" {
  source = "./infra-modules/s3"
  tags = {
    Name = "avs-ops-bucket"
    Site = "avs"
  }
}