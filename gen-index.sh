#!/bin/bash
set -e

IMG_INDEX_FILE=img-index.txt
cat /dev/null > $IMG_INDEX_FILE

for topic in $(ls -d img/*); do
    for name in $(ls $topic/*.jpg); do
        echo $name >> $IMG_INDEX_FILE
    done
done
