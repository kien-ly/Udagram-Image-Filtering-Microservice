docker build . -t neikyl/udagram-frontend:v4
docker push neikyl/udagram-frontend:v4


kubectl set image deployment frontend-deployment frontend-node=neikyl/udagram-frontend:v4