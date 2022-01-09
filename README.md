# unmondefaitmain

## Introduction

This repository able you to use nextcloud with collabora protected by a proxy called traefik, all managed with docker-compose, the database is located on a mariadb container. 

All datas are stored on volumes, which you should retrieve with the command `docker volume ls` and `docker volume inspect --format='{{.Mountpoint}}' $VOLUME_NAME` to backup them else where.


## How deploy your own nextcloud with collabora


<ins>Prerequired:</ins>

1. Configure a nextcloud domains name on your DNS provider (ex: nextcloud.yourdomain.io)
2. Configure a collabora domains name on your DNS provider (ex: collabora.yourdomain.io)


<ins>Step by step:</ins>

1. Open up your Terminal / Command Line
2. `git clone` the repository
3. `cd` into the directory of the step (the one you just `git clone`d)
4. `cd nextcloud`
5. Create a file .env with the ENV variables bellow:
```
NEXTCLOUD_URL=nextcloud.yourdomain.fr
COLLABORA_DOMAIN=collabora.yourdomain.fr
COLLABORA_PASSWORD=yourpassword
COLLABORA_USERNAME=yourlogin
```
6. Create a directory secrets on nextcloud directory `mkdir secrets`
7. On the "secrets" directory you have to create those files bellow with specific parameters on it.
```
ls secrets
mariadb-database.txt  mariadb-root-password.txt  nextcloud-admin-password.txt
mariadb-password.txt  mariadb-user.txt           nextcloud-admin-user.txt

#example here with mariadb-user.txt
cat mariadb-user.txt 
nextcloud
```
8. On traefik/traefik.yaml set your email line 34
9. launch docker_start.sh
11. Enjoy your nextcloud !! 
12. if it doesnt' work debug errors with docker-compose logs
 



