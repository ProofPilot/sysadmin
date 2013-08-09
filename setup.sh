cd /etc/nginx
mv nginx.conf nginx.conf.ORG
mv conf.d conf.d.ORG
ln -s /home/sites/configs/nginx/nginx.conf
ln -s /home/sites/configs/nginx/conf.d/

cd /etc/php-fpm.d
mv www.conf www.conf.ORG
ln -s /home/sites/configs/php-fpm/www.conf

cp /home/sites/configs/passwd-s3fs /home/sites/.passwd-s3fs
chown sites.cyclogram /home/sites/.passwd-s3fs
chmod 600 /home/sites/.passwd-s3fs
