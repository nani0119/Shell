#!/bin/bash -
#===============================================================================
#
#          FILE: timed-input3.sh
#
#         USAGE: ./timed-input3.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/09/2019 03:17:27 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
TIMELIMIT=3

echo "what is your name? quickly"

read -t $TIMELIMIT name <&1

echo

if [ ! -z $name ]
then
	echo "your name is $name"
else
	echo "TIMEOUT"
fi

exit 0
