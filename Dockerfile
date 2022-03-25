FROM anapsix/alpine-java 
LABEL maintainer="inesboukhris20@gmail.com" 
COPY /var/lib/jenkins/workspace/Qoentum/target/qentum.war /home/devops-qoentum/qoentum.war 
CMD ["java","-war","/home/devops-qoentum/qoentum.war"]