# Terraform Infrastructure Pipeline on AWS with Jenkins

Automated **Infrastructure as Code (IaC)** pipeline using **Terraform (HCL)**, **Jenkins**, and AWS. This project provisions a secure EC2 instance configured for Jenkins and SonarQube using a complete CI pipeline.

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-%232C5263.svg?style=for-the-badge&logo=jenkins&logoColor=white)
![SonarQube](https://img.shields.io/badge/SonarQube-%234E9BCD.svg?style=for-the-badge&logo=sonarqube&logoColor=white)

## Overview

This repository demonstrates a production-ready DevOps workflow for provisioning AWS infrastructure with Terraform, orchestrated through a Jenkins pipeline. It includes:

- Terraform configuration for AWS EC2 + Security Group
- Remote state management with S3 + DynamoDB
- Jenkins pipeline with SonarQube analysis and security scanning
- Automated SonarQube setup via shell script

## Project Structure
.
├── main.tf                 # Main Terraform resources (EC2 + SG)

├── provider.tf             # AWS Provider configuration

├── backend.tf              # S3 backend for Terraform state

├── Jenkinsfile             # CI pipeline definition

├── install.sh              # SonarQube Docker setup script

├── .gitignore

└── .terraform.lock.hcl

text## Features

- **Infrastructure as Code**: Fully declarative AWS resources using Terraform
- **Secure Networking**: Custom Security Group with controlled ingress ports
- **Remote State**: S3 backend with DynamoDB locking
- **CI Pipeline**: Jenkins pipeline with SonarQube code quality analysis
- **Security Scanning**: Trivy filesystem scan
- **Automated Tooling**: One-click SonarQube setup via Docker

## Tech Stack

| Component          | Technology                  |
|--------------------|-----------------------------|
| IaC                | Terraform (HCL)             |
| Cloud              | AWS (EC2, S3, DynamoDB)     |
| CI/CD              | Jenkins                     |
| Code Quality       | SonarQube                   |
| Security Scan      | Trivy                       |
| Scripting          | Shell                       |

## Prerequisites

- AWS account with sufficient permissions
- Terraform installed
- Jenkins server with required plugins (Pipeline, SonarQube Scanner, etc.)
- AWS credentials configured in Jenkins
- SonarQube server (or use the included `install.sh`)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Joseph-peemi/Terraform-Infrastructure-Pipeline-AWS-Jenkins-HCL.git
cd Terraform-Infrastructure-Pipeline-AWS-Jenkins-HCL
2. Configure Backend
Update backend.tf with your S3 bucket and DynamoDB table names.
3. Deploy Infrastructure
Bashterraform init
terraform plan
terraform apply -auto-approve
4. Run SonarQube (Optional)
Bashchmod +x install.sh
./install.sh
5. Jenkins Pipeline
Configure your Jenkins job to use the Jenkinsfile in this repository.
Resources Provisioned

EC2 Instance: c7i-flex.large with 40GB storage
Security Group: Open ports for SSH, HTTP, HTTPS, Jenkins (8080), SonarQube (9000), etc.
Tags: Consistent naming and organization

Pipeline Stages

Clean Workspace
Checkout Code
SonarQube Analysis
Quality Gate Check
Install Dependencies
Trivy Security Scan
