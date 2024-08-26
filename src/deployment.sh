
kubectl apply -f k8s/env-secret.yaml
kubectl apply -f k8s/env-config.yaml
kubectl apply -f k8s/aws-secret.yaml

kubectl apply -f k8s/backend-feed-deployment.yaml
kubectl apply -f k8s/backend-user-deployment.yaml
kubectl apply -f k8s/frontend-deployment.yaml
kubectl apply -f k8s/reverseproxy-deployment.yaml

kubectl apply -f k8s/backend-feed-service.yaml
kubectl apply -f k8s/backend-user-service.yaml
kubectl apply -f k8s/frontend-service.yaml
kubectl apply -f k8s/reverseproxy-service.yaml