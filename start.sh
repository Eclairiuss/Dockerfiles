
docker network create my_network

docker run --network my_network -d --name="tomcat-run" -v "/home/eclairiuss/Documents/stage/training-java/target/war:/usr/local/tomcat/webapps" -p 127.0.0.1:8080:8080 -p 127.0.0.1:8000:8000 eclairiuss/tomcat
docker run --network my_network -d --name="mysql-run" -e MYSQL_PASSWORD=root -p 127.0.0.1:3306:3306 eclairiuss/mysql
