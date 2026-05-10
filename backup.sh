#!/bin/bash

USER="Ejay-cloud-CEC"
BACKUP_DIR="$HOME/backups"
DATE=$(date +%Y-%m-%d_%H%M)

create_backup_dir() {
    if [ ! -d "$BACKUP_DIR" ]; then
        mkdir -p "$BACKUP_DIR"
        echo "Created: $BACKUP_DIR"
    else
        echo "Backup folder exists na"
    fi
}

backup_files() {
    local source_file="day8.sh"
    if [ -f "$source_file" ]; then
        cp "$source_file" "$BACKUP_DIR/day8_$DATE.sh"
        echo "Backup done: day8_$DATE.sh"
    else
        echo "Error: $source_file wala pa"
    fi
}

show_summary() {
    echo "=== BACKUP SUMMARY ==="
    echo "User: $USER"
    echo "Date: $DATE"
    echo "Files sa backup:"
    ls -lh "$BACKUP_DIR"
    echo "=== DONE ==="
}

echo "=== DAY 9 BACKUP START ==="
create_backup_dir
backup_files
show_summary
