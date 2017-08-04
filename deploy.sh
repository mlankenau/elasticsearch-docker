export tag=5.5.1
docker build -t elasticsearch:$tag . || exit
docker tag elasticsearch:$tag mlankenau/elasticsearch:$tag || exit
docker tag elasticsearch:$tag mlankenau/elasticsearch:latest || exit
docker push mlankenau/elasticsearch:$tag || exit
docker push mlankenau/elasticsearch:latest || exit
