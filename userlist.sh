#!/bin/bash -
#===============================================================================
#
#          FILE: userlist.sh
#
#         USAGE: ./userlist.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 04:31:01 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

PASSWD_FILE=/etc/passwd

n=1
for name in $(awk 'BEGIN{FS=":"}{print $1}'<"$PASSWD_FILE") ; do
	echo "USER #$n = $name"
	((n++))
done

exit 0
