#!/bin/bash -
#===============================================================================
#
#          FILE: fd-test2.sh
#
#         USAGE: ./fd-test2.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/15/2019 11:15:06 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

exec 3>&1

echo "aaaaa" >&3
echo "bbbbb" >&1

exit 0
