#!/bin/bash -
#===============================================================================
#
#          FILE: seconds.sh
#
#         USAGE: ./seconds.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/09/2019 02:35:15 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

TIME_LIMIT=10
INTERVAL=1


while [ "$SECONDS" -le "$TIME_LIMIT" ] ; do
    echo "This script has been running $SECONDS."
	sleep $INTERVAL
done
