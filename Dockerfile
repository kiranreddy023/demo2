FROM alpine
MAINTAINER Kiran Vepanjeri
RUN apk add openjdk11
COPY target/demo2-1.0.0.jar /
WORKDIR /
EXPOSE 8080
CMD [ "java","-jar","demo2-1.0.0.jar","&"]

