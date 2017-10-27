#!/bin/bash -e
SEARCH=$1
INCLUDES=$2
if [ -z "$2" ]
then
    INCLUDES="*.go"
fi

grep -Hrn --include=$INCLUDES $SEARCH | awk  -F ":" -v a=$SEARCH '{b=""; for(i=3;i<=NF;i++){b=b":"$i}; print "./"$1":"$2":"index(b,a)-1}'