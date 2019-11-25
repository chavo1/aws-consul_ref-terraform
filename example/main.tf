module "consul_sofia" {
  source = "../"

  consul_version        = var.ami_server
  access_key            = var.access_key
  secret_key            = var.secret_key
  region                = var.region["virginia"]
  instance_type         = var.instance_type
  key_name              = var.key_name
  subnet                = module.consul_vpc.private_subnet[0]
  server_count          = var.server_count
  dc_net                = var.dc_net["dc1"]
  dcname                = var.dcname["dc1"]
  vpc_security_group_id = module.consul_vpc.security_group_id
  dummy                 = null_resource.home_router.id
}
output "private_ips" {
  value = "${module.consul_sofia.private_ip}"
}
