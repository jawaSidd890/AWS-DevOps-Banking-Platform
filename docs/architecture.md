This system follows a standard enterprise DevOps architecture.

Source code is maintained in GitHub.  
Jenkins pulls the code and runs CI/CD pipelines.  
Docker builds the application image.  
Trivy scans images for vulnerabilities.  
Images are stored in AWS ECR.  
Helm deploys images into AWS EKS.  
Users access the system through AWS Application Load Balancer.  
Prometheus and Grafana monitor application health.  
FluentBit pushes logs to CloudWatch.
