FROM weidehualinux/tomcat:8581
LABEL maintainer "admin <admin@kubemsb.com>"
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/*.war /usr/local/tomcat/webapps/ROOT.war 
