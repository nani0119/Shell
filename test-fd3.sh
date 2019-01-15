#!/bin/bash -
#===============================================================================
#
#          FILE: test-fd3.sh
#
#         USAGE: ./test-fd3.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/15/2019 11:21:48 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


exec 8>test
echo "aaaaa" >&8
