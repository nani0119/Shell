#!/bin/bash -
#===============================================================================
#
#          FILE: char-range.sh
#
#         USAGE: ./char-range.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 06:02:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo; echo "Hit a key, then hit return."
read keypress


case $keypress in
[[:lower:]]	)
	    echo "Lowercase letter"
		;;

[[:upper:]]	)
	    echo "Uppercase letter"
		;;
[0-9]  )
	    echo "Digit"
	    ;;

	*)
		echo "Punctuation, whitespace, or other"
		;;

esac    # --- end of case ---

exit 0
