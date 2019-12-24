#!/bin/bash
rsync -rv /etc/apache2/sites-enabled/ 192.168.56.5:/srv/backup/apache2/
rsync -rv /var/www/wordpress/ 192.168.56.5:/srv/backup/wordpress/ 
