#!/bin/bash

BACKUP_DIR="/var/backups/nginx"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="nginx_config_${DATE}.tar.gz"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/$ARCHIVE_NAME /etc/nginx

find $BACKUP_DIR -name "nginx_config_*.tar.gz" -mtime +30 -delete

echo "Backup created: $ARCHIVE_NAME"
