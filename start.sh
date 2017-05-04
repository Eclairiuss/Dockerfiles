
docker network create my_network

docker run --network my_network -d --name="tomcat-run" -p 8080:8080 -p 8000:8000 eclairiuss/tomcat
docker run --network my_network -d --name="mysql-run" -e MYSQL_PASSWORD=root -p 3306:3306 eclairiuss/mysql
