# Primary production region. A second region is added as a sibling
# environment directory (e.g. `prd-eu-west-1/`) rather than a variable,
# so that each region gets its own state file and can be planned/applied
# independently. See docs/ARCHITECTURE.md for the full rationale.
aws_region   = "us-east-1"
environment  = "prd"
project_name = "acme-platform"
