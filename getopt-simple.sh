#!/bin/bash -
#===============================================================================
#
#          FILE: getopt-simple.sh
#
#         USAGE: ./getopt-simple.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 01:16:32 PM
#      REVISION:  ---
#===============================================================================

#set -o nounset                                  # Treat unset variables as an error

set -- -a=1 b=2 -c=3

getopt_simple()
{
	echo "getopt_simple"
	echo echo "Parameters are '$*'"

	until [ -z "$1" ] ; do

		if [ "${1:0:1}" == '-' ] ; then
			tmp=${1:1}
			parameter=${tmp%=*}                  # 提取参数名
			value=${tmp##*=}                    # 提取参数值
			echo "Parameter: $parameter, value: $value" 
		fi
		shift
	done
}

getopt_simple $*
