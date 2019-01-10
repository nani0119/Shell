#!/bin/bash -
#===============================================================================
#
#          FILE: symlinks-list.sh
#
#         USAGE: ./symlinks-list.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 04:38:06 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

directory=${1-`pwd`}

echo "symbolic links in directory \"$directory\""

for file in "$( find $directory -type l )"
do
    echo "$file"
done|sort

exit 0
