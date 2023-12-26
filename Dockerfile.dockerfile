FROM httpd:latest

RUN apt-get update && apt-get upgrade -y

COPY . /usr/local/apache2/htdocs

EXPOSE 80
CMD ["httpd-foreground"]
