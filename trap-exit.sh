#!/bin/bash -
#===============================================================================
#
#          FILE: trap-exit.sh
#
#         USAGE: ./trap-exit.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/16/2019 11:17:43 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

trap 'echo Variable Listing---a=$a   b=$b'  EXIT

echo "This prints before the \"trap\" --"
echo "even though the script sees the \"trap\" first."

a=39
b=36

exit 0
