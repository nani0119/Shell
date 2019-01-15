#!/bin/bash -
#===============================================================================
#
#          FILE: word-freq.sh
#
#         USAGE: ./word-freq.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/14/2019 10:40:53 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

ARGS=1
E_BADARGS=65
E_NOFILE=66


if [ $# -ne $ARGS  ] ; then
	echo "Usage: `basename $0` filename"
	exit $E_BADARGS
fi


if [ ! -f $1  ] ; then
	echo "File \"$1\" does not exist."
	exit $E_NOFILE
fi

cat "$1" | xargs -n1 | sed -e 's/\.//g' -e 's/\,//g' -e 's/ //g' -e 's/#//g'| sort | uniq -c | sort -nr 

exit 0
