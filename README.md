# unmondefaitmain


## How deploy your own nextcloud

Step by step:

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
7. On the "secrets" directory you have create those files bellow with specific parameters on it.
```
ls secrets
mariadb-database.txt  mariadb-root-password.txt  nextcloud-admin-password.txt
mariadb-password.txt  mariadb-user.txt           nextcloud-admin-user.txt
#example here with mariadb-user.txt
cat mariadb-user.txt 
nextcloud
```
8. On traefik/traefik.yaml set your email line 34
9. start traefik `cd traefik && docker-compose up --force-recreate -d`
10. start nextcloud `cd nextcloud && docker-compose up --force-recreate -d`
11. Enjoy your nextcloud !! 
12. if it doesnt' work debug errors with docker-compose logs
 



