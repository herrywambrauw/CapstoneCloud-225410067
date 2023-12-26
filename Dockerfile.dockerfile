FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

ADD https://github.com/herrywambrauw/CapstoneCloud-225410067/raw/main/WebStatic_225410067.zip .
RUN unzip WebStatic_225410067.zip
RUN mv Herry_225410067/* .
RUN rm -rf WebStatic_225410067 WebStatic_225410067.zip

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
