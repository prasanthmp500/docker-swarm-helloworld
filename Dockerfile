FROM java:8

RUN  apt-get update && apt-get install -y  openssh-server

RUN  apt-get install -y openssh-client

RUN mkdir -p /var/run/sshd

WORKDIR /usr/myapp

COPY ./target/*.jar /usr/myapp

COPY ./starter-script.sh /usr/myapp



EXPOSE 8080

EXPOSE 22

RUN echo $PATH

CMD ./starter-script.sh 

