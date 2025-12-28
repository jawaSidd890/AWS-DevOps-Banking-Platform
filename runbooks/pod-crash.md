# Pod Crash Runbook

## Symptoms
- Pod in CrashLoopBackOff
- Application not responding

## Checks
```bash
kubectl get pods
kubectl describe pod <pod-name>
kubectl logs <pod-name>
