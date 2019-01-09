#!/bin/bash -
#===============================================================================
#
#          FILE: timed-input1.sh
#
#         USAGE: ./timed-input1.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/09/2019 02:57:15 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

TMOUT=3                                         # 设置超时时间

echo "what is your favorite song?"
echo "Quickly now, you only have $TMOUT seconds to answer!"

read song

if [ -z "$song" ]
then
	song="(no answer)"
fi

echo "your favorite song is $song"
exit 0
