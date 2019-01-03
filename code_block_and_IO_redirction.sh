#!/bin/bash -
#===============================================================================
#
#          FILE: code_block_and_IO_redirction.sh
#
#         USAGE: ./code_block_and_IO_redirction.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/03/2019 06:13:57 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

FILE=/etc/fstab

{
	read line1
	read line2
} < $FILE

echo "First line in $FILE is:"
echo $line1
echo
echo "Second line in $FILE is:"
echo $line2

exit 0
