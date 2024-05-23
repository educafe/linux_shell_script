#!/bin/bash
# Daily File Backup example

BACKUP_LISTS=backuplist.txt
BACKUP_DIR=./backup
BACKUP_FNAME=$(date +%y%m%d).tar.gz
DEST_FILE=$BACKUP_DIR/$BACKUP_FNAME

if [ ! -f $BACKUP_LIST ]; then
	echo "$BACKUP_LIST does not exist!!"
	exit 1
fi

# To check to see if backup directory exists, if not exist make it
if [ -f $BACKUP_DIR ]; then
	echo "$BACKUP_DIR regular file exist..."
	exit 2
else
	if [ -e $BACKUP_DIR ] && [ -d $BACKUP_DIR ]; then
		ls -ld $BACKUP_DIR
	else
		mkdir $BACKUP_DIR
		ls -ld $BACKUP_DIR
	fi
fi

#To list up file names for backup  
file_no=0							#start on line-1 of config file
while read list <&3
do
	if [[ "$list" =~ ^\##*? ]] ; then
#	if [[ ${filename:0:1} = \# ]] ; then
		continue;
	elif [ -z "$list" ]; then
		continue;
	fi
	if [ -f "$list" ] || [ -d "$list" ]; then
		# echo $filename
		filelist+="$list "
		file_no=$[$file_no + 1]
	else
		echo "$filename, does not exist!! but continue to build backup list..."
	fi
done 3<$BACKUP_LISTS

echo ""; echo "backup file list : "
for file in $filelist
do
	echo $file
done

# To tar files and compress
sudo tar -czf $DEST_FILE $filelist 2> err.log
echo ""; echo "Archving Completed!!"
echo "Archived backup file : $DEST_FILE"
ls -l $DEST_FILE
echo "TOTAL_FILES = $file_no"
exit 0

# 00 04  1  *  * 	educafe	/home/educafe/lab/ch05/04.backup_daily
