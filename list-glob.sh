#!/bin/bash -
#===============================================================================
#
#          FILE: list-glob.sh
#
#         USAGE: ./list-glob.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 04:24:22 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "show all files"

for file in *
do
    ls -l "$file"
done

echo "show files with 's' or 'l' "


for file in [sl]* ; do
    ls -al "$file"
done
