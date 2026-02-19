# AWS Modular Web Infrastructure with Terraform

This project demonstrates a professional, modular approach to deploying a web server on AWS using **Infrastructure as Code (IaC)**. Instead of a monolithic file, the infrastructure is broken down into reusable modules for Networking and Compute.



## 🏗️ Architecture
* **VPC**: A custom Virtual Private Cloud with a `10.0.0.0/16` CIDR block.
* **Public Subnet**: Configured with `map_public_ip_on_launch` for external access.
* **Internet Gateway**: Enables communication between the VPC and the internet.
* **Security Group**: Firewall rules allowing **SSH (Port 22)** and **HTTP (Port 80)**.
* **EC2 Instance**: An Ubuntu 22.04 server automated with **User Data** to install and configure an Apache web server.

## 📁 Project Structure
```text
devops-lab/
├── dev/
│   └── web-stack/          # Root Module: Bridges the modules
│       ├── main.tf         
│       ├── variables.tf
│       └── outputs.tf
└── modules/
    ├── networking/         # Reusable VPC and Routing logic
    └── compute/            # Reusable EC2 and SG logic

🚀 Getting Started
Prerequisites
Terraform installed locally.

AWS CLI configured with credentials.

Deployment
Initialize: terraform init

Plan: terraform plan

Deploy: terraform apply -auto-approve

🛠️ Lessons Learned
Module Interdependency: Passing outputs (VPC/Subnet IDs) between modules.

State Troubleshooting: Resolving RouteAlreadyExists and resource conflicts.

Bootstrapping: Automating server setup using user_data scripts.
