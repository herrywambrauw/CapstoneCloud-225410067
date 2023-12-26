FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

COPY Herry.JPEG /usr/Herry_225410067/Herry.JPEG
ADD https://github.com/herrywambrauw/CapstoneCloud-225410067/raw/main/WebStatic_225410067.zip .

RUN unzip WebStatic_225410076.zip
RUN mv WebStatic_225410076

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
