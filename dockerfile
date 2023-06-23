FROM alpine as build
cmd sudo apt-get install -y tomcat9
cmd sudo apt install -y default-jdk

WORKDIR /usr/local/tomcat/webapps
FROM alpine
COPY --from=build /usr/local/tomcat/webapps /target/*.war
