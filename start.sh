# First we build our images
docker-compose build

# Then we scale our app to our startingport size
docker-compose scale app=2

# Now we can startup our application
docker-compose up -d

# Display four page loads
sleep 5
curl localhost
curl localhost
curl localhost
curl localhost

# Scaling to 4 apps
docker-compose scale app=4
docker-compose up  --force-recreate -d

# Display four page loads
sleep 5
curl localhost
curl localhost
curl localhost
curl localhost
