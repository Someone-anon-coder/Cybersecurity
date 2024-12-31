#!/bin/bash

# This script will backup files or directories
SOURCE_DIRECTORY=$1
BACKUP_DIRECTORY=$2

# Check if the source directory exists
if [ ! -d $SOURCE_DIRECTORY ]; then
    echo "Source directory does not exist"
    exit 1
fi

# Check if the backup directory exists
if [ ! -d $BACKUP_DIRECTORY ]; then
    echo "Backup directory does not exist"
    exit 1
fi

# Create a timestamped directory in the backup directory
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIRECTORY_TIMESTAMP="$BACKUP_DIRECTORY/$TIMESTAMP"

mkdir $BACKUP_DIRECTORY_TIMESTAMP
echo "Backup directory created: $BACKUP_DIRECTORY_TIMESTAMP"

# Copy the files from the source directory to the backup directory
cp -r $SOURCE_DIRECTORY/* $BACKUP_DIRECTORY_TIMESTAMP
echo "Files copied from $SOURCE_DIRECTORY to $BACKUP_DIRECTORY_TIMESTAMP"

echo "Backup completed successfully"