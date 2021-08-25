FROM java:8
EXPOSE 8081
ARG JAR_FILE=target/*.jar
RUN git clone https://github.com/snehaj12/HelloWorld.git
COPY ${JAR_FILE} HelloWorld.jar
ENTRYPOINT ["java","-jar","/HelloWorld.jar"]
docker build -t helloWorldMavericks .