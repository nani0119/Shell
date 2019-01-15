#!/bin/bash -
#===============================================================================
#
#          FILE: fd-test1.sh
#
#         USAGE: ./fd-test1.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/15/2019 11:01:25 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

exec 3<>test

read a <&3

echo "input $a"

echo "11111" >&3

exit 0
