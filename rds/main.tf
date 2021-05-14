module "rds_module" {
  source = "../modules/rds"

  env            = var.env
  storage        = 10
  skip_snapshot  = var.skip_snapshot
  instance_class = var.instance_class
  username       = var.username
}