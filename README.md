# Infrastructure as Code (IaC): AWS EC2 Deployment with Terraform, Docker, and Nginx

## Screenshots
 ### CI/CD Pipeline
 ![CI/CD Pipeline](github-action-success.png.png)

 ### Running Application
 ![Nginx Web App](nginx-success.png.png)

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to automate AWS infrastructure provisioning and deploy a Dockerized Nginx web server.

It evolved from a basic EC2 deployment into a production-style DevOps CI/CD workflow with remote state management and automated deployment practices.

---

## Architecture

GitHub Repository
        ↓
GitHub Actions (CI/CD Pipeline)
        ↓
Terraform (Infrastructure as Code)
        ↓
AWS Cloud
 ├── EC2 Instance (provisioned via terraform module)
 ├── Security Group (SSH + HTTP)
 ├── S3 Bucket (Remote State)
 └── DynamoDB (State Locking)
        ↓
Docker
        ↓
Nginx Web Server (Port 80)

## Current Architecture (Final Version)

- Root Terraform configuration handles orchestration and module integration
  
- EC2 instances are deployed using a reusable Terraform module (modules/ec2)

- GitHub Actions manages the CI/CD pipeline for automated infrastructure deployment
  
- AWS remote backend (S3 + DynamoDB) ensures secure state storage and locking
  
## Tech Stack

- Terraform
- AWS (EC2, S3, DynamoDB)
- Docker
- Nginx
- GitHub Actions
- Linux (Amazon Linux 2)
- Git & GitHub

---

## Features

### Version 1 (Base Infrastructure)
- EC2 provisioning using Terraform
- Security group configuration (SSH + HTTP)
- Docker installation via user data
- Nginx container deployment
- Basic infrastructure automation

---

### Version 2 (CI/CD & Production Upgrade)
- GitHub Actions CI/CD pipeline
- Terraform validate + plan stages
- Controlled deployment workflow
- Remote state storage (S3)
- State locking (DynamoDB)
- Safer infrastructure lifecycle management

---

## CI/CD Workflow

1. Code pushed to GitHub
2. GitHub Actions triggers pipeline
3. Terraform init
4. Terraform fmt & validate
5. Terraform plan
6. Manual approval (optional)
7. Terraform apply

---

## What This Project Does

- Creates AWS EC2 instance
- Configures security groups (HTTP & SSH)
- Installs Docker via user data script
- Runs Nginx container on port 80
- Outputs public IP automatically

---

## Outcome

- Fully automated AWS infrastructure deployment
- Working web server accessible via public IP
- CI/CD pipeline for infrastructure changes
- Remote state management implemented
- Production-style DevOps workflow

---

## Challenges & Lessons Learned

- Terraform requires valid AWS credentials before initialization  
- GitHub Actions pipelines run in isolated environments  
- Small YAML errors can break entire workflows  
- Security group misconfiguration can block application access  
- Debugging requires understanding each layer (CI/CD → Terraform → AWS → Docker)
  
### Real-world Debugging Experience (Module Upgrade Phase)

During project refactoring into a modular Terraform architecture, several real-world DevOps issues were encountered and resolved:

- Terraform state lock conflicts in DynamoDB during pipeline execution
- Git divergence issues caused by committing from incorrect directory levels
- CI/CD pipeline failures due to incorrect working directory configuration
- Module recognition issues after refactoring EC2 into reusable module structure

These were resolved by:
- Aligning Git repository root with Terraform execution context
- Proper state migration using terraform state mv
- Restructuring project into root + module architecture
- 
## Key DevOps Concepts Practiced

- Infrastructure as Code (IaC)
- Cloud automation with Terraform
- CI/CD pipeline design
- Remote backend state management
- Docker-based application deployment
- AWS networking and security groups
- Real-world cloud debugging

---

## Future Improvements

- Add Elastic IP for static address
- Add HTTPS with domain (optional)
- Modular Terraform structure
- VPC + subnet architecture
- Kubernetes deployment version
- Monitoring with CloudWatch

---

## Author

David Onwuka  
Aspiring DevOps Engineer
