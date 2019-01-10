#!/bin/bash -
#===============================================================================
#
#          FILE: set_postations_args.sh
#
#         USAGE: ./set_postations_args.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 04:19:58 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# 行星名称和距离.
for planet in "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"
do
    set -- $planet                               # 解析变量"planet"并且设置位置参数. 
	                                            # "--" 将防止$planet为空, 或者是以一个破折号开头.

	echo "$1       $2,000,000 miles from the sun"
done
