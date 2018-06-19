docker-compose -f test_volume_v3.yml run -d
docker-compose -f test_volume_v3.yml run -d pg
sudo ls /var/lib/docker/volumes/mydata <= which the persistent volumes created by test_volume_v3.yml
docker build ./ <= used to build docker image
