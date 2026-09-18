# Modules

Empty for this exercise — no AWS resources are declared anywhere in this
repository. This directory documents where reusable infrastructure would
live as the system grows, so that each `environments/<env>` configuration
stays a thin composition of modules rather than a copy-pasted pile of
resources.

Anticipated modules, in the order they'd likely be introduced:

| Module      | Responsibility                                                            |
|-------------|----------------------------------------------------------------------------|
| `network`   | VPC, subnets (public/private), route tables, NAT gateways, security groups |
| `compute`   | Launch template, Auto Scaling Group, Application Load Balancer, IAM role   |
| `database`  | RDS instance/cluster, subnet group, parameter group, backup configuration  |
| `cache`     | ElastiCache (Redis) replication group, subnet group                        |
| `dns`       | Route 53 hosted zone + records (including cross-region routing policies)   |
| `state`     | Bootstrap module for the S3 bucket + DynamoDB table used as the backend    |

Each module takes `environment`, `aws_region`, and `project_name` (plus its
own functional inputs) and exposes the identifiers the next layer needs
(e.g. `network` exposes `vpc_id` and subnet IDs consumed by `compute`,
`database`, and `cache`). Modules do not hardcode environment- or
region-specific values — those are supplied by each `environments/<env>`
root module via its `terraform.tfvars`.

See `docs/ARCHITECTURE.md` for how these modules compose across regions.
