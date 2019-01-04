#!/bin/bash -
#===============================================================================
#
#          FILE: position-parameter.sh
#
#         USAGE: ./position-parameter.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/04/2019 04:04:27 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

MINIPARAMETER=10
EOF=EOF
echo -e "script name: $0"
echo -e "script basename :`basename $0`"

echo -e "parameter number:$#"


if [ $# -lt $MINIPARAMETER ] ; then
	echo -e "This script needs at least $MINIPARAMETER command-line arguments!"
	exit 0
fi

echo -e "all the position parameter:$*"


echo -e "the last one:${!#}"

echo -e "exec shift"

shift

echo -e "all the position parameter:$@"

echo "display all paramters:"

until [  ${1:-$EOF} == $EOF ]
do
	echo -e $1
	shift
done

exit 0

