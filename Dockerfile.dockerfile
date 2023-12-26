FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD https://github.com/herrywambrauw/CapstoneCloud-225410067/raw/main/Herry_225410067.zip .
RUN unzip Herry_225410067.zip
RUN mv Herry_225410067/* .
RUN rm -rf Herry_225410067 Herry_225410067.zip

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
