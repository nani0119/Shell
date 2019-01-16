#!/bin/bash -
#===============================================================================
#
#          FILE: trap-ctr-c.sh
#
#         USAGE: ./trap-ctr-c.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/16/2019 11:20:17 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
trap 'echo "you had pressed ctr-c";exit 0 ' TERM INT

echo "press ctr-c to terminal"
while true
do
:
done

