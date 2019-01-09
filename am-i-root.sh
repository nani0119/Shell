#!/bin/bash -
#===============================================================================
#
#          FILE: am-i-root.sh
#
#         USAGE: ./am-i-root.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/09/2019 03:35:39 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

ROOT_NAME="root"
ROOT_UID=0


if [ $UID -eq $ROOT_UID  ] ; then
	echo "yes, you are root"
fi

username=`id -nu`


if [ $username != $ROOT_NAME  ] ; then
    echo "your name is $username, not a root"
fi

exit 0
