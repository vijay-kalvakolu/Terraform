module "dev_network" {
  source   = "./modules/network"
}

module "newec2" {
  source = "./modules/compute"
ami_id = "ami-0341d95f75f311023"
subnet_id = module.dev_network.pub_sub_ids[0] # calling the public subnet from the module

}