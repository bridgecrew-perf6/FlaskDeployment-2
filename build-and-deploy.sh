# We build so any updates in the app will be reflected
echo "Building the newest version of the app"
docker-compose build

# Then we push to dockerhub
echo "push to Dockerhub"
docker-compose push

