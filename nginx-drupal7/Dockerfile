FROM nginx:1.11

MAINTAINER Eric <ericstone.dev@gmail.com>

# replace nginx with nginx-extras
RUN apt-get update && \
	apt-get remove --purge -y nginx && \
	apt-get install -y nginx-extras && \
	mkdir /var/cache/nginx

# use drupal7 configuration
# see https://github.com/ericstone57/drupal-with-nginx
COPY ./drupal-with-nginx /etc/nginx

# customized configuration
COPY ./conf/upstream_phpcgi_tcp.conf /etc/nginx/upstream_phpcgi_tcp.conf
COPY ./conf/apps/drupal/drupal--development.conf /etc/nginx/apps/drupal/drupal.conf
