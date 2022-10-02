FROM openjdk
EXPOSE 9101
ADD /target/test1.jar test1.jar
ENTRYPOINT ["java","-jar","/test1.jar"]