FROM alpine
RUN apk update && apk upgrade 
RUN apk add --update lighttpd
COPY lighttpd.conf /etc/lighttpd/
COPY index.html /var/www/html/
EXPOSE 80
CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]