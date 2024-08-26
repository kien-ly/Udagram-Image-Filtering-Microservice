# Screenshots
To help review your infrastructure, please include the following screenshots in this directory::

## Deployment Pipeline
* DockerHub showing containers that you have pushed
![DockerHub](1.docker-hub.png)

* GitHub repository’s settings showing your Travis webhook (can be found in Settings - Webhook)
![](2.1.travis_element.png)

* Travis CI showing a successful build and deploy job
![](2.travisCI.png)

## Kubernetes
* To verify Kubernetes pods are deployed properly
```bash
kubectl get pods
```
![](3.Pods.png)

* To verify Kubernetes services are properly set up
```bash
kubectl describe services
```
![](services.png)
![](services1.png)

* To verify that you have horizontal scaling set against CPU usage
```bash
kubectl describe hpa
```
![](hpa.png)
![](replicas.png)

* To verify that you have set up logging with a backend application
```bash
kubectl logs {pod_name}
```
![](logs.png)