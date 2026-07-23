# Terraform - AWS Infrastructure as Code
This repository contains Terraform configurations, modules and
environment definitions used to deploy and manage infrastructure on AWS
in a consistent, version-controlled, repeatable way.

## Project Structure

```
environments/
  dev/            # Development environment
modules/
  s3/             # S3 bucket
  sqs/            # SQS queues, their respective DLQs and redrive policies 
```

## Prerequisites

- Terraform >= 1.x
- AWS CLI configured with appropriate credentials

## Usage

```bash
cd environments/dev
terraform init
terraform validate
terraform plan
terraform apply
```