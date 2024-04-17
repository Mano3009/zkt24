FROM httpd:latest


RUN mkdir -p /data


WORKDIR /data


COPY ./static-files /usr/local/apache2/htdocs/


EXPOSE 80

