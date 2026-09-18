variable "aws_region" {
  description = "AWS region this environment's resources are deployed into."
  type        = string
  default     = "us-east-1"

  validation {
    condition     = can(regex("^[a-z]{2}-[a-z]+-[0-9]$", var.aws_region))
    error_message = "aws_region must look like a valid AWS region, e.g. us-east-1."
  }
}

variable "environment" {
  description = "Deployment environment (dev, stg, prd)."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "stg", "prd"], var.environment)
    error_message = "environment must be one of: dev, stg, prd."
  }
}

variable "project_name" {
  description = "Short, stable name used for tagging and resource naming."
  type        = string
  default     = "acme-platform"

  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{1,30}$", var.project_name))
    error_message = "project_name must be lowercase alphanumeric with hyphens, starting with a letter."
  }
}
