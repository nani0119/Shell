#!/bin/bash -
#===============================================================================
#
#          FILE: fd-test3.sh
#
#         USAGE: ./fd-test3.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/15/2019 12:34:43 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

exec 5<>logfile
read a  <&5
echo $a

echo "test"  1>&5 

exit 0
