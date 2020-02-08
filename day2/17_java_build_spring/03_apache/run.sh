docker network create apachespring
docker container run --name apache --network apachespring -P -d  -v $(pwd)/:/usr/local/apache2/conf/ httpd:2.4
docker container run -d --network apachespring --name spring small-spring