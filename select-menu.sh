#!/bin/bash -
#===============================================================================
#
#          FILE: select-menu.sh
#
#         USAGE: ./select-menu.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/10/2019 06:10:57 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

PS3='Choose your favorite vegetable: ' # 设置提示符字串

select vegetable in "beans" "carrots" "potatoes" "onions" "rutabagas"
do
	echo "Your favorite veggie is $vegetable."
    echo 
    echo "Yuck!"
    break           #没有break会一直循环
done

exit 0

