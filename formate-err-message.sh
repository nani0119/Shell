#!/bin/bash -
#===============================================================================
#
#          FILE: formate-err-message.sh
#
#         USAGE: ./formate-err-message.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/11/2019 01:15:31 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

E_BADDIR=65

var=noexistdir

error()
{
	printf "$@" >&2
	echo
	exit $E_BADDIR
}

cd $var || error "can not cd to %s" "$var"
