#!/bin/bash
set -x
set -e

PRO_SRV='eric@106.15.40.239'
PRO_WWW='/home/eric/websites/nginx_conf'

rsync \
  --usermap=www-data:www-data \
  --exclude=.DS_Store \
  --exclude=.git/ \
  --exclude=.gitignore \
  --delete \
  -arvP ./nginx_conf/ $PRO_SRV:$PRO_WWW


PRO_WWW='/home/eric/websites/drupal_conf'

rsync \
  --usermap=www-data:www-data \
  --exclude=.DS_Store \
  --exclude=.git/ \
  --exclude=.gitignore \
  --delete \
  -arvP ./drupal_conf/ $PRO_SRV:$PRO_WWW

ssh $PRO_SRV cp $PRO_WWW/wx-demo.e0x233.com/settings.php /home/eric/websites/sam_wechat/sites/default/settings.php
ssh $PRO_SRV cp $PRO_WWW/boucheron.e0x233.com/settings.php /home/eric/websites/boucheron_wechat/sites/default/settings.php