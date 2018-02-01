mvn clean package
docker build . -t  ubuntu-helloworld:latest 
docker run -d -p 8090:8080 ubuntu-helloworld:latest
curl  http://localhost:8090/greeting



