#!/bin/bash -
#===============================================================================
#
#          FILE: diaglog.sh
#
#         USAGE: ./diaglog.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/16/2019 02:44:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# 在对话框窗口中的输入错误
E_INPUT=65

# 输入窗口的显示尺寸.
HEIGHT=50
WIDTH=60

# 输出文件名(由脚本名构造).
OUTFILE=$0.output

# 将脚本的内容显示到文本窗口中
gdialog --title "Displaying: $0" --textbox $0 $HEIGHT $WIDTH

# 现在, 我们将输入保存到文件中. 
echo -n "VARIABLE=" > $OUTFILE
gdialog --title "User Input" --inputbox "Enter variable, please:" $HEIGHT $WIDTH 2>> $OUTFILE

if [ "$?" -eq 0 ]
then
	echo "Executed \"dialog box\" without errors."
else
	echo "Error(s) in \"dialog box\" execution."
	rm $OUTFILE
	exit $E_INPUT
fi

. $OUTFILE

echo "The variable input in the \"input box\" was: "$VARIABLE""

rm $OUTFILE  # 清除临时文件

exit $?
