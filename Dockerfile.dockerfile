FROM httpd:latest

RUN apt-get update && apt-get upgrade -y

COPY Herry.JPEG /usr/Herry_225410067/Herry.JPEG

EXPOSE 80
CMD ["httpd-foreground"]
