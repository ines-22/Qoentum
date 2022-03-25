FROM anapsix/alpine-java 
LABEL maintainer="inesboukhris20@gmail.com" 
COPY /var/lib/jenkins/workspace/Qoentum/target/qoentum.war /home/devops-qoentum/qoentum.war 
