FROM mcr.microsoft.com/java/maven
EXPOSE 8080
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["mvn", "clean test"]


