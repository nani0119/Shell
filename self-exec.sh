#!/bin/bash -
#===============================================================================
#
#          FILE: self-exec.sh
#
#         USAGE: ./self-exec.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/11/2019 03:44:47 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "This line appears ONCE in the script, yet it keeps echoing."
echo "The PID of this instance of the script is still $$."

echo "==================== Hit Ctl-C to exit ===================="

sleep 1

exec $0

echo "This line will never echo!"
exit 0
