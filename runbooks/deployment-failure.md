# Deployment Failure Runbook

## Symptoms
- Pods not starting
- Deployment rollout failed

## Checks
```bash
kubectl get deploy
kubectl describe deploy banking-app
kubectl get events
