#!/bin/bash -
#===============================================================================
#
#          FILE: script-detector.sh
#
#         USAGE: ./script-detector.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/14/2019 02:11:58 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

TESTCHARS=2                                     # 测试的字符个数
SHABANG='#!'

for file in *
do
	if [ `head -c$TESTCHARS "$file" ` == "$SHABANG"  ]
	then
		echo "File \"$file\" is a script."
	else
		echo "File \"$file\" is *not* a script."
	fi
done

exit 0
