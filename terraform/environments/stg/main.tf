# --------------------------------------------------------------------------
# Environment: stg
#
# This file is intentionally empty of resources for this exercise — no AWS
# credentials are required to plan or validate this configuration.
#
# In a real system, this is where the environment composes shared modules,
# e.g.:
#
# module "network" {
#   source      = "../../modules/network"
#   environment = var.environment
#   aws_region  = var.aws_region
# }
#
# module "compute" {
#   source      = "../../modules/compute"
#   environment = var.environment
#   vpc_id      = module.network.vpc_id
#   subnet_ids  = module.network.private_subnet_ids
# }
#
# module "database" {
#   source      = "../../modules/database"
#   environment = var.environment
#   vpc_id      = module.network.vpc_id
# }
#
# module "cache" {
#   source      = "../../modules/cache"
#   environment = var.environment
#   vpc_id      = module.network.vpc_id
# }
#
# See terraform/modules/README.md and docs/ARCHITECTURE.md for the intended
# module layout and how it scales across regions.
# --------------------------------------------------------------------------
