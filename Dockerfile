FROM amazoncorretto:17-alpine

WORKDIR /usr/src/app
#COPY Required files into the docker image
COPY src/* /usr/src/app/
