# High CPU Runbook

## Symptoms
- Pod CPU > 80%
- Application slow

## Checks
```bash
kubectl top pod
kubectl describe pod <pod-name>
