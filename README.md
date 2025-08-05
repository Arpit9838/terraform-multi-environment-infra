# Terraform Multi-Environment Infrastructure

This project manages AWS infrastructure using Terraform with support for **three isolated environments**:

- `dev` – development environment (1 EC2 instance)
- `stg` – staging environment (1 EC2 instance)
- `prd` – production environment (2 EC2 instances)

Each environment includes:
- EC2 instances
- S3 bucket for backend state
- DynamoDB table for state locking
- Separate security groups based on environment needs



## Features

- Modularized code using Terraform modules
- Isolated backend configuration for each environment
- Conditional resource creation
- State locking using **S3** + **DynamoDB**

## How to Use

terraform init
terraform plan
terraform apply
````

## Prerequisites

* AWS CLI configured with credentials
* Terraform >= 1.5
`
