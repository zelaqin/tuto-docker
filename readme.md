source .env
sed "s/%VERSION%/$APP_VERSION/" package.json

docker build -t helloworld:1.2.0 .

docker run -p 3000:3000 -e APP_VERSION=1.2.0 helloworld:1.2.0

docker-compose up

docker run -d -p 3000:3000 --name helloworld -e APP_VERSION=1.2.0 helloworld:1.2.0
docker exec -it helloworld sh

docker rm XX
docker image ls
docker rmi YY

docker logs -f helloworld