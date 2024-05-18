# About
Repository contains docker-environment for deploy and manage nextcloud instance

# First installation
1) type params in config files **db.env** and **docker-compose.yml** (search by ```<type-value>``` string)
2) start nextcloud instance

# Useful commands
## Start nextcloud instance
```docker compose start```
## Stop nextcloud instance (with no remove containers)
```docker compose stop```
## Stop nextcloud instance (with remove containers)
```docker compose down```
## Remove unused volumes
```docker volume prune --all```

# Maintence
## Backup
1) stop nextcloud instance
2) create backup with utils/backup.sh
3) start nextcloud instance
## Restore
1) stop and remove nextcloud instance containers
2) remove unused volumes
3) start nextcloud instance (it creates containers with clear volumes)
4) stop nextcloud instance
5) restore backup with utils/restore.sh
6) start nextcloud instance
