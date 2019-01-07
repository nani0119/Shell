#!/bin/bash -
#===============================================================================
#
#          FILE: broken-link.sh
#
#         USAGE: ./broken-link.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/07/2019 01:40:54 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


#-------------------------------------------------------------------------------
# 如果没有参数传递到脚本中就使用当前目录
#-------------------------------------------------------------------------------

[ $# -eq 0  ] && directorys=`pwd` || directorys=$@


#---  FUNCTION  ----------------------------------------------------------------
#          NAME:  linkchk
#   DESCRIPTION:  递归检测传递进来的目录或文件是否为链接
#    PARAMETERS:  
#       RETURNS:  
#-------------------------------------------------------------------------------


linkchk ()
{
	
	for element in $1/* ; do
		[ -h "$element" -a ! -e "$element" ] && echo \"$element\"
		[ -d "$element" ] && linkchk $element
	done
}	# ----------  end of function linkchk  ----------



for directory in $directorys ; do
	
	if [ -d $directory ]  ; then
		linkchk $directory
	else
		echo "$directory is not a directory"
		echo "Usage: $0 dir1 dir2 ..."
	fi
done

exit 0
