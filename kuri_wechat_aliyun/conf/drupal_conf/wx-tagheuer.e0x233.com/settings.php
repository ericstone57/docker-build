<?php
include dirname(__FILE__) . '/default.settings.php';

$databases['default'] = [
    'default' => [
        'driver' => 'mysql',
        'database' => 'tagheuer_wechat',
        'username' => 'tagheuer',
        'password' => 'Pz2sE*dcd9BrL4kEcpgz',
        'host' => 'rm-uf6k5oiyxefr4fpwj.mysql.rds.aliyuncs.com',
        'prefix' => '',
        'collation' => 'utf8mb4_general_ci',
        'charset' => 'utf8mb4',
    ],
];

$conf['redis_client_interface'] = 'PhpRedis';
$conf['cache_backends'] = [
    'sites/all/modules/contrib/redis/redis.autoload.inc',
];
$conf['cache_default_class'] = 'Redis_Cache';
$conf['cache_class_cache_form'] = 'DrupalDatabaseCache';
$conf['lock_inc'] = 'sites/all/modules/contrib/redis/redis.lock.inc';
$conf['cache_prefix'] = 'tag_';
$conf['redis_client_host'] = 'r-uf6b593706016944.redis.rds.aliyuncs.com';
$conf['redis_client_port'] = '6379';
$conf['redis_client_base'] = '3';
$conf['redis_client_password'] = 'jPPKFoa42evB9sQcAjGy';
