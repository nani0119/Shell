#!/bin/bash -
#===============================================================================
#
#          FILE: CleanUpLog.sh
#
#         USAGE: ./CleanUpLog.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/03/2019 01:52:39 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


#===============================================================================
#  GLOBAL DECLARATIONS
#===============================================================================

LOG_DIR=/var/log
ROOT_UID=0                                      # $UID为0时，用户具有root权限
LINES=50                                        # 默认保存行数
E_XCD=66
E_NOTROOT=67

# 检测root权限


if [ "$UID" -ne "$ROOT_UID" ] ; then
	echo "Must be root to run this script"
	exit $E_NOTROOT
fi


if [ $# -gt 0 ] ; then
	lines=$1
else
	lines=$LINES
fi

cd $LOG_DIR


if [ `pwd` != "$LOG_DIR" ] ; then
	echo "Can't change to $LOG_DIR"
	exit $E_XCD
fi

tail -$lines messages > mesg.temp
mv mesg.temp messages

cat /dev/null > wtmp
echo "Log clean up."

exit 0
