FROM docker.io/library/ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir -p /usr/local/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz /tmp/apache-tomcat-9.0.80.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-9.0.80.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.80/* /usr/local/tomcat/
RUN echo "PWD is: $PWD"
EXPOSE 8080
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
CMD /usr/local/tomcat/bin/catalina.sh run
