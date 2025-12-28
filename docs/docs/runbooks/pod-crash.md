# Incident: Pod Crash (CrashLoopBackOff)

## Symptoms
- Pod status shows CrashLoopBackOff
- Application not responding

## Investigation Steps
1. kubectl get pods
2. kubectl describe pod <pod-name>
3. kubectl logs <pod-name>

## Root Cause Examples
- Application error
- Missing environment variables
- Image pull failure
- Out of memory

## Resolution
1. Restart deployment:
   kubectl rollout restart deployment banking-app

2. If issue persists, rollback:
   helm rollback banking

3. Validate:
   kubectl get pods
   kubectl get svc
