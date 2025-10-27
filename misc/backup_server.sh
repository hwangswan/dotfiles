
#!/bin/bash

# To run:
# bash backup.sh PATH_TO_EXTERNAL_BACKUP_DIRECTORY
# PLEASE NOTE THAT THE PATH IS TO A DIRECTORY

BACKUP_NAME=backup-old-server-$(date +%s).tar.gz

# Stop the server to prevent user adding more data.
bin/stop

# Create .tar.gz backup file
tar -czvf $BACKUP_NAME config/ data/

# Move backup file to directory

if [ "$#" -eq 0 ]; then
    # echo "No moving"
    echo "Backup created in $BACKUP_NAME"
else
    echo "Moving file to backup place $1"
#    mv $BACKUP_NAME $1
fi

# TODO: upload file to Google Drive

# # Free up space.
# rm $1

# # Restart the server and quit this script.
bin/start &
