# Incident: Deployment Failure

## Symptoms
- Jenkins pipeline failed
- New pods not ready
- Service unavailable

## Investigation
1. kubectl rollout status deployment banking-app
2. kubectl get pods
3. kubectl describe pod <pod-name>
4. Check Jenkins console output

## Resolution
1. Rollback to previous stable version:
   helm rollback banking

2. Redeploy once fixed:
   helm upgrade banking k8s/helm-chart/banking-app

3. Verify:
   kubectl get svc
   kubectl get pods
