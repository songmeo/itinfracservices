Any technical employees with enough rights should be able to restore services from backups.
+ To restore mysql from mysqldump do:

    rsync -rv backup-server:/srv/backup/db-server/* /srv/backup/restore/

    mysql {{ db_name }} < /srv/backup/restore/{{ db_name }}.sql

+ To restore wordpress:
    
    rsync -rv backup-server:/srv/backup/wordpress/* /var/www/wordpress/ && rsync -rv backup-server:/srv/backup/apache/* /etc/apache2/sites-enabled/

+ To restore bind:

    rsync -rv rv backup-server:/srv/backup/bind/* /etc/bind/
