#!/bin/bash -
#===============================================================================
#
#          FILE: interactive-shell.sh
#
#         USAGE: ./interactive-shell.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/16/2019 02:01:05 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
MY_PROMPT="$"


while : ; do
echo -n "$MY_PROMPT"
read line
eval "$line"
done

exit 0
