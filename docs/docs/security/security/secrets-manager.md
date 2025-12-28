# Secrets Management Strategy

In this project, all sensitive data such as database passwords, API keys and encryption secrets are stored securely using AWS Secrets Manager.

No secrets are stored in:
- GitHub
- Jenkins
- Docker images
- Kubernetes YAML files

Access Flow:
1. Application runs inside Kubernetes (EKS)
2. Pod uses IAM Role for Service Account (IRSA)
3. IAM role has permission to read secrets from AWS Secrets Manager
4. Application fetches secrets at runtime

Example Secrets:
- banking/db-password
- banking/api-key
- banking/jwt-secret

This approach follows banking security and compliance standards.

Secrets are stored in AWS Secrets Manager.

Examples:
- Database password
- API keys
- Application secrets

Kubernetes retrieves secrets using IAM roles for service accounts.
No secrets are stored in GitHub or Docker images.
