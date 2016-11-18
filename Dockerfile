FROM ubuntu:16.04
MAINTAINER Hoang Nguyen <nbhoangit@gmail.com>
RUN apt-get update -y && \
	apt-get install -y \
	apache2 && \
	apt-get clean && \
	rm -rf \var\lib\lists\*

EXPOSE 8080:80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
