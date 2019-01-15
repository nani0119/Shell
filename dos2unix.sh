#!/bin/bash -
#===============================================================================
#
#          FILE: dos2unix.sh
#
#         USAGE: ./dos2unix.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/14/2019 02:46:06 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
E_WRONGARGS=65


if [ $# -eq 0  ] ; then
	echo "Usage: `basename $0` filename-to-convert"
	exit $E_WRONGARGS
fi

NEWFILENAME=$1.unx

CR='\015'                                       # # 015是8进制的ASCII码的回车 DOS中文本文件的行结束符是CR-LF. UNIX中文本文件的行结束符只是LF.

tr -d $CR < $1 > $NEWFILENAME

echo "Original DOS text file is \"$1\"."
echo "Converted UNIX text file is \"$NEWFILENAME\"."

exit 0
