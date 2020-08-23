FROM mcr.microsoft.com/java/maven:8-zulu-debian9
EXPOSE 8080
COPY . /usr/src/myapp
RUN ["mvn","install"]
WORKDIR /usr/src/myapp
CMD ["mvn", "test"]


