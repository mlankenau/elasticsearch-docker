docker build -t elasticsearch:5.5.1 . || exit
docker tag elasticsearch:5.5.1 mlankenau/elasticsearch:5.5.1 || exit
docker tag elasticsearch:5.5.1 mlankenau/elasticsearch:latest || exit
docker push mlankenau/elasticsearch:5.5.1 || exit
docker push mlankenau/elasticsearch:latest || exit
