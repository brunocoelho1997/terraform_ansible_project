


module "dev-host" {
  source = "./modules/environment-host"

  container_name = "dev_host"
  external_port = "8080"

}

module "prd-host" {
  source = "./modules/environment-host"

  container_name = "prd_host"
  external_port = "8081"

}