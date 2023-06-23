FROM alpine as build
cmd sudo apt-get install -y tomcat9

WORKDIR /usr/local/tomcat/webapps
FROM alpine
COPY --from=build /usr/local/tomcat/webapps /target/*.war
