FROM tomcat:8.0
COPY ./target/portfolio.war /usr/local/tomcat/webapps
EXPOSE 8080
