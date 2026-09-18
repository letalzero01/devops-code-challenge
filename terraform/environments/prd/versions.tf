terraform {
  required_version = ">= 1.7.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60"
    }
  }

  # --------------------------------------------------------------------------
  #
  # In a real deployment this environment would use an isolated backend key
  # (and, once multi-region is introduced, an isolated backend per region)
  # so that `terraform apply` in one environment/region can never affect the
  # state of another:
  #
  # backend "s3" {
  #   bucket         = "acme-terraform-state-<account-id>"
  #   key            = "prd/us-east-1/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
  # --------------------------------------------------------------------------
}
