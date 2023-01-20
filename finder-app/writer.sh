#!/bin/bash
#Steve Young

#get cmd args
if [ "$#" -ne 2 ]; then
    echo "Usage: writer writefile writestr" >&2
    exit 1
fi
writefile="$1"
writestr="$2"

#create dir if needed
dir=$(dirname "$1")
mkdir -p "$dir"

#write new file
echo $2 > $1
if [ "$?" -ne 0 ]; then
    echo "File write failed" >&2
    exit 1
fi
