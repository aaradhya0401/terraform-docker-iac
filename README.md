# Terraform Docker IaC

## Overview
This project demonstrates Infrastructure as Code (IaC) by using Terraform to provision and manage a Docker container locally.

## Objective
To understand how Terraform defines, provisions, tracks, and destroys infrastructure resources using configuration files.

## Tools Used
- Terraform v1.17.0
- Docker Desktop
- Docker Provider for Terraform
- Nginx
- Visual Studio Code
- Windows PowerShell

## Project Structure
```text
terraform-docker-iac/
├── main.tf
├── .gitignore
├── .terraform.lock.hcl
├── README.md
└── screenshots/
```

## Implementation
1. Configured the Docker provider for the local Docker Desktop engine.
2. Defined the Nginx Docker image as a Terraform resource.
3. Defined a Docker container named `terraform-iac-demo`.
4. Mapped container port 80 to local port 8081.
5. Initialized Terraform and downloaded the required provider.
6. Formatted and validated the Terraform configuration.
7. Generated an execution plan and applied the configuration.
8. Verified the running container using Docker commands and a web browser.
9. Inspected Terraform state to identify managed resources.

## Commands Used
```powershell
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
docker ps
terraform state list
terraform state show docker_container.terraform_demo
```

## Verification
After successful provisioning, open:

http://localhost:8081

The Nginx welcome page confirms that the web server is accessible through the configured port mapping.

## Cleanup
When the demonstration is complete, remove the Terraform-managed resources with:

```powershell
terraform destroy
```

Review the proposed changes and type `yes` when prompted.

## Learning Outcomes
- Understanding Infrastructure as Code.
- Using Terraform providers and resources.
- Creating Docker infrastructure declaratively.
- Understanding Terraform initialization, planning, and applying.
- Inspecting Terraform state.
- Destroying managed infrastructure.

## Internship Task
Task 3 — Infrastructure as Code (IaC) with Terraform.