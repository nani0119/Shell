#!/bin/bash -
#===============================================================================
#
#          FILE: timed-input.sh
#
#         USAGE: ./timed-input.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/09/2019 03:23:57 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

INTERVAL=3

timeout_read()
{
	timeout=$1
	val=$2                                      # 引用
	old_tty=`stty -g`
	stty -icanon min 0 time ${timeout}0
	read $val                                   # 传递引用
	stty $old_tty
}

echo 
echo "what is your name? quickly"
timeout_read $INTERVAL name
echo

if [ ! -z "$name" ]
then
	echo "Your name is $name."
else
    echo "Timed out."
fi

exit 0
