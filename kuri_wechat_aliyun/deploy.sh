#!/bin/bash
set -x
set -e

PRO_SRV='eric@106.15.40.239'

PRO_WWW='/home/eric/websites/conf'
rsync \
  --usermap=www-data:www-data \
  --exclude=.DS_Store \
  --exclude=.git/ \
  --exclude=.gitignore \
  --delete \
  -arvP ./conf/ $PRO_SRV:$PRO_WWW

ssh $PRO_SRV cp $PRO_WWW/drupal_conf/wx-demo.e0x233.com/settings.php /home/eric/websites/wx-demo.e0x233.com/sites/default/settings.php
ssh $PRO_SRV cp $PRO_WWW/drupal_conf/boucheron.e0x233.com/settings.php /home/eric/websites/boucheron.e0x233.com/sites/default/settings.php
ssh $PRO_SRV cp $PRO_WWW/drupal_conf/wx-grizzly.e0x233.com/settings.php /home/eric/websites/wx-grizzly.e0x233.com/sites/default/settings.php
ssh $PRO_SRV cp $PRO_WWW/drupal_conf/wx-tagheuer.e0x233.com/settings.php /home/eric/websites/wx-tagheuer.e0x233.com/sites/default/settings.php