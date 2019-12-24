- Coverage:
  + mysqldump
  + bind /etc/bind/
  + wordpress /var/ww/wordpress/
  + apache /etc/apache2/sites-enabled/

- Frequency:
  + incremental backups will be done every day
  + differential backups will be done every week
  + full backups will be done every month

- Retention:
  + after differential backups are made, incremental backups will be removed.
  + after full backup, differential backups will be removed.
  + full backup are retained until the next full backup.

- Usability:
  + To restore mysql from mysqldump do:

    rsync -rv backup-server:/srv/backup/db-server/* /srv/backup/restore/
    mysql {{ db_name }} < /srv/backup/restore/{{ db_name }}.sql
