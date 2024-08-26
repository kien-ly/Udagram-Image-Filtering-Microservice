docker --version # print the version for logging
docker build -t udagram-api-feed ./udagram-api-feed
docker build -t udagram-api-user ./udagram-api-user
docker build -t reverseproxy ./udagram-reverseproxy
docker build -t udagram-frontend ./udagram-frontend

docker tag udagram-api-feed neikyl/udagram-api-feed:v3
docker tag udagram-api-user neikyl/udagram-api-user:v3
docker tag reverseproxy neikyl/reverseproxy:v3
docker tag udagram-frontend neikyl/udagram-frontend:v3

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push neikyl/udagram-api-feed:v3
docker push neikyl/udagram-api-user:v3
docker push neikyl/reverseproxy:v3
docker push neikyl/udagram-frontend:v3