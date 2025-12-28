# Incident: High CPU Usage

## Symptoms
- Grafana shows CPU > 80%
- Application slow or unresponsive

## Investigation
1. kubectl top pods
2. Identify pod consuming high CPU
3. kubectl describe pod <pod-name>

## Resolution
1. Scale application:
   kubectl scale deployment banking-app --replicas=4

2. Monitor in Grafana

3. If still high, check logs:
   kubectl logs <pod-name>
