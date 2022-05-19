# We build so any updates in the app will be reflected
echo "Building the newest version of the app"
docker-compose build

# Then we push to dockerhub
echo "push to Dockerhub"
docker-compose push

# Sketch of deployment steps
aws eks --region eu-west-2 update-kubeconfig --name flask_deployment

kubectl apply -f ./k8s/backend.yaml
kubectl apply -f ./k8s/frontend.yaml
