#!/bin/bash -
#===============================================================================
#
#          FILE: getopts.sh
#
#         USAGE: ./getopts.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/11/2019 03:23:45 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

NO_ARGS=0
E_OPTERROR=65


if [ $# -eq "$NO_ARGS" ]
then
	echo "Usage: `basename $0` options (-mnopqrs)"
	exit $E_OPTERROR
fi

while getopts ":mnopq:rs" Option
do

	case $Option in
		m     ) echo "Scenario #1: option -m-   [OPTIND=${OPTIND}]";;
		n | o ) echo "Scenario #2: option -$Option-   [OPTIND=${OPTIND}]";;
		p     ) echo "Scenario #3: option -p-   [OPTIND=${OPTIND}]";;
		q     ) echo "Scenario #4: option -q-with argument \"$OPTARG\"   [OPTIND=${OPTIND}]";;
		r | s ) echo "Scenario #5: option -$Option-";;
		*     ) echo "Unimplemented option chosen.";;
		esac    # --- end of case ---
done

shift $(($OPTIND - 1))
exit 0
