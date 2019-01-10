#!/bin/bash -
#===============================================================================
#
#          FILE: convert_file.sh
#
#         USAGE: ./convert_file.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 11:17:44 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

OPERATION=mv
OLD_SUFFIX='jpeg'
NEW_SUFFIX='jpg'


if [ $# -ne 0 ] ; then
	directorys=$1
else
	directorys=`pwd`
fi


for file in $directorys/* ; do
	echo "--------------------------------"
	echo "find file:$file"
	filename=${file%.$OLD_SUFFIX}
    suffix=${file##*.}
	if [ "$suffix" == $OLD_SUFFIX ]
	then
	    $OPERATION $file $filename.$NEW_SUFFIX
	    echo "rename:$filename.$NEW_SUFFIX"
	fi
done

exit 0
