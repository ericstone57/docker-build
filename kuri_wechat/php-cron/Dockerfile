FROM registry.cn-hangzhou.aliyuncs.com/kuri/sam_wechat_php

MAINTAINER ericstone.dev@gmail.com

RUN apt-get update && apt-get install -y cron
RUN apt-get clean && rm -rf /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html
VOLUME /var/www/html
VOLUME /etc/cron.d

ADD php-cron/cron.d/wechat-cron /etc/cron.d/wechat-cron
RUN crontab /etc/cron.d/wechat-cron

CMD /usr/sbin/cron -f