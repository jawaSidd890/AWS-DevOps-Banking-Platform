# AWS DevOps Banking Platform
Cloud-Native CI/CD Deployment on AWS using EKS, Terraform, Jenkins & Helm

## Overview
This project demonstrates a real-world DevOps implementation for deploying a cloud-native banking application on AWS.  
It follows enterprise-grade practices used in banking and fintech environments including Infrastructure as Code, CI/CD pipelines, Kubernetes orchestration, monitoring, logging and security.

The goal is to show how a banking application is built, deployed, monitored, secured and operated in production using DevOps and SRE best practices.

## High-Level Architecture
Developer pushes code to GitHub → Jenkins CI/CD pipeline builds and scans Docker images → pushes images to AWS ECR → deploys to AWS EKS using Helm → users access application via AWS ALB → monitoring and logging are handled by Prometheus, Grafana and CloudWatch.

## Technology Stack
Cloud: AWS (EKS, EC2, ECR, VPC, S3, IAM, ALB)  
IaC: Terraform  
CI/CD: Jenkins  
Containerization: Docker  
Orchestration: Kubernetes (EKS)  
Deployment: Helm  
Monitoring: Prometheus, Grafana  
Logging: FluentBit, CloudWatch  
Security: Trivy, IAM, Secrets Manager  
Application: Python Flask Banking API  

## Application
The banking application is a simple REST API exposing endpoints such as:
- /login
- /balance
- /transfer
- /transactions  

It is designed only to demonstrate production-grade DevOps pipelines.

## CI/CD Pipeline Flow
1. Developer pushes code to GitHub  
2. Jenkins pulls source code  
3. Unit tests are executed  
4. Docker image is built  
5. Trivy scans the image for vulnerabilities  
6. Image is pushed to AWS ECR  
7. Helm deploys the new version to EKS  
8. Kubernetes performs health checks  
9. Monitoring dashboards reflect the deployment  

## Repository Structure
aws-devops-banking-platform  
- app – Banking application source code  
- terraform – AWS infrastructure  
- jenkins – CI/CD pipelines  
- k8s – Kubernetes & Helm  
- monitoring – Prometheus & Grafana  
- logging – FluentBit  
- runbooks – Production support guides  
- docs – Architecture and design  

## Monitoring & Reliability
Prometheus collects Kubernetes and application metrics.  
Grafana visualizes pod health, CPU, memory, and response times.  
Alerts can be configured for pod crashes, high CPU, or deployment failures.

## Security
Docker images are scanned using Trivy.  
AWS IAM controls access to AWS resources.  
Secrets are stored in AWS Secrets Manager.  
Kubernetes credentials are never hard-coded.

## Why This Project Matters
This project mirrors how banking and fintech systems are deployed and operated in real production environments.  
It proves hands-on skills in AWS, Kubernetes, CI/CD, infrastructure automation, monitoring and security.

## Resume Summary
Built a cloud-native CI/CD platform on AWS using Terraform, Jenkins, Docker and EKS to deploy a secure banking application with centralized logging, monitoring and automated rollbacks.
