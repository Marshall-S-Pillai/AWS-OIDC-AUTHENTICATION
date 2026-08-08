# AWS-OIDC-AUTHENTICATION

GitHub Actions workflow for AWS OIDC Authentication with Terraform - DevSecOps.

This repository demonstrates secure authentication from GitHub Actions to AWS using OIDC (no long-lived access keys) and deploys a simple VPC + EC2 web server using Terraform.

## Architecture

- VPC with public and private subnets
- Internet Gateway + public route table
- Security Group allowing HTTP (port 80)
- EC2 instance running Ubuntu 24.04 with Apache

## Prerequisites

1. AWS Account with an IAM Role configured for GitHub OIDC trust
2. GitHub repository secrets:
   - `AWS_ACCOUNT_ID`
   - `AWS_ROLE_NAME`
3. S3 bucket for Terraform state (`powertool2026` by default)

## Usage

### Deploy
- Push to `main` branch triggers the deploy workflow
- Or use the `oidc.yml` workflow (supports plan/apply and manual destroy)

### Destroy
- Use the `destroy.yml` workflow (manual trigger only)
- Or trigger `oidc.yml` via workflow_dispatch (it will run destroy)

## Local Development

```bash
terraform init
terraform plan
terraform apply
```

## Key Features

- **OIDC Authentication** – No static AWS credentials stored in GitHub
- **Latest AMI** – Automatically uses the most recent Ubuntu 24.04 LTS AMI
- **Modern Terraform** – AWS provider ~> 6.0, Terraform >= 1.11
- **Best Practices** – Data sources, default tags, descriptive resources
