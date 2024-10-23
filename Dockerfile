FROM tomcat:8.0
COPY ./target/portfolio.war /usr/local/tomcat/webapps
#COPY ./target/portfolio.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
