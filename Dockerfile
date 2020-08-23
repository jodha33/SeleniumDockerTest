FROM mcr.microsoft.com/java/maven:8-zulu-debian9
EXPOSE 8080
COPY pom.xml .
RUN mvn clean package -Dmaven.main.skip -Dmaven.test.skip && rm -r target
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

CMD ["mvn", "test"]