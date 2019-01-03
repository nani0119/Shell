#!/bin/bash -
#===============================================================================
#
#          FILE: save_code_block_result_2_file.sh
#
#         USAGE: ./save_code_block_result_2_file.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/03/2019 06:19:55 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

SUCCESS=0
E_NOARGS=65


if [ -z "$1" ]	; then
	echo "USAGE: `basename $0` dir"
	exit $E_NOARGS
fi

{
	echo "Dir:"
	echo
	ls $1
} > "ls.txt"

echo "Result of dir $1 in file ls.txt"

exit 0


