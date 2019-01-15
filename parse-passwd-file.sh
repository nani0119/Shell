#!/bin/bash -
#===============================================================================
#
#          FILE: parse-passwd-file.sh
#
#         USAGE: ./parse-passwd-file.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/11/2019 02:37:58 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
PASSWD_FILE="/etc/passwd"


#  在循环内部设置$IFS变量,
#+ 而不用把原始的$IFS
#+ 保存到临时变量中.
# IFS 作为环境变量传递给read

while IFS=: read name passwd uid gid fullname ignore ; do
	echo "$name ($fullname):$passwd"
done < $PASSWD_FILE                             # read 通过文件获取值

echo

exit 0
