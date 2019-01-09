#!/bin/bash -
#===============================================================================
#
#          FILE: timed-input2.sh
#
#         USAGE: ./timed-input2.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ZhaoRenjie (zhaorj), renjie.0501@163.com
#  ORGANIZATION: 
#       CREATED: 01/09/2019 03:01:44 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

TIME_LIMIT=3

TimerOn()
{
	sleep $TIME_LIMIT && kill -s 14 $$ &
}

PrintAnswer()
{
	
	if [ "$answer" == "TIMEOUT"  ] ; then
		echo $answer                            # 定时器超时分支处理
    else
		echo "Your favorite veggie is $answer"
		kill $!                                 # 关闭定时器 ，$! 上一个在后台运行的作业的PID
	fi

}

Int14Vector()
{
	answer="TIMEOUT"
	PrintAnswer
	exit 14
}

# install interrpt program

trap Int14Vector 14                             # 定时中断

echo "What is your favorite vegetable "
TimerOn                                         # 启动定时器
read answer
PrintAnswer
