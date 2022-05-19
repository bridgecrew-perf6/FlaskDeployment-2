# We build so any updates in the app will be reflected
echo "Building the newest version of the app"
docker-compose build

# Then we push to dockerhub
echo "push to Dockerhub"
docker-compose push

kubectl apply -f ./k8s/backend.yaml
kubectl apply -f ./k8s/frontend.yaml


kubectl apply -f ./k8s/NginXService.yaml

kubectl apply -f ./k8s/nginx/configmap.yaml
kubectl apply -f ./k8s/nginx/nginx-depl.yaml
