# Create a Full Backup usinc rsync and compression

# Edited crontab using crontab -e and add the line to run fullbackup.sh everyday at 02AM
# 0 2 * * * /home/myuser/full_backup.sh

# Create a compressed tar file with full backup of the folder python3_code
tar -zcvf fullbackup.tar.gz python3_code

# Send using rsync to a local Backup folder
rsync -avzHP fullbackup.tar.gz Backup/
