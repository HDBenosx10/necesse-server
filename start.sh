docker stop necesse
docker rm necesse
docker build -t necesse .
docker run -d --name necesse \
  -e WORLD_NAME=Inferno\
  -p 14159:14159/udp \
  -v ./saves:/app/saves \
  --restart always \
  necesse