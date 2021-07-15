FROM tomcat:9.0-alpine
EXPOSE 8080
ADD tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml
ADD manager.xml $CATALINA_HOME/conf/Catalina/localhost/manager.xml
ADD ./ta /usr/local/tomcat/webapps/ta
CMD ["catalina.sh", "run"]
