module "webserver_module" {
  source = "../modules/webserver"

  env           = "dev"
  instance_type = "t2.micro"

  remote_state = {
    bucket = "terraform-nazy-state"
    key    = "dev/rds.tfstate" # change to qa 
    region = "us-east-1"
  }
}

output "alb_dns" {
  value = module.webserver_module.module_alb_dns
}