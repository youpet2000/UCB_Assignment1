#!/bin/bash
#Steve Young

#get cmd args
if [ "$#" -ne 2 ]; then
    echo "Usage: finder filesdir searchstr" >&2
    exit 1
fi
filesdir="$1"
searchstr="$2"

#check if dir exists
if [ ! -d $filesdir ]; then
    echo "Dir not found" >&2
    exit 1
fi

#do counts
#X is num of files
X="$( ls $1 | wc -l)"
#Y is num of matching lines
declare -i Y
FILES=$1/*
for f in $FILES; do
	tmp="$(grep -c $2 $f)"
	Y=$((Y + $tmp))
done
echo "The number of files are $X and the numberof matching lines are $Y"
exit 0
#
