output "aws_region" {
  description = "The AWS region selected for this environment."
  value       = var.aws_region
}

output "project_name" {
  description = "The project name used for tagging and resource naming."
  value       = var.project_name
}

output "environment" {
  description = "The deployment environment this configuration targets."
  value       = var.environment
}
