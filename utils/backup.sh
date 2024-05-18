###### database
docker run --rm --volumes-from nextcloud-db-1 -v $PWD/backups:/backup-dir ubuntu tar cvfz /backup-dir/backup-nextcloud-db-1.tar.gz -C /var/lib mysql

###### nextcloud
docker run --rm --volumes-from nextcloud-app-1 -v $PWD/backups:/backup-dir ubuntu tar cvfz /backup-dir/backup-nextcloud-app-1.tar.gz -C /var/www html
