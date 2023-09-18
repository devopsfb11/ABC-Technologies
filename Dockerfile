FROM tomcat:9.0.54-jre8
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/web-app ABCtechnologies-1.0.war
