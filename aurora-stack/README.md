# The Aurora Stack: Automated AWS Infrastructure
A fully automated, high-availability web stack deployed using Terraform.

## 🏗️ Architecture
- **VPC & Networking:** Custom VPC with 2 Public Subnets across multiple Availability Zones (ap-south-1a, ap-south-1b).
- **Load Balancing:** Application Load Balancer (ALB) acting as a single entry point, distributing traffic to healthy targets.
- **Compute:** EC2 instances running Apache, bootstrapped via Bash User Data.
- **Security:** Tiered Security Groups implementing the "Principle of Least Privilege."

## 🚀 Key Features
- **Zero-Touch Deployment:** Entire infrastructure is created/destroyed with a single command.
- **High Availability:** Traffic automatically fails over if one Availability Zone goes down.
- **Infrastructure as Code (IaC):** Modular configuration for easy scaling and maintenance.

## 🛠️ Usage
1. `terraform init`
2. `terraform apply -auto-approve`
3. Access the site via the `alb_dns_name` output.