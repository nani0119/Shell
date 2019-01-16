
#-------------------------------------------------------------------------------
# 有用的变量定义
#-------------------------------------------------------------------------------
ROOT_UID=0             # root用户的$UID为0.
E_NOTROOT=101          # 非root用户的出错代码.
MAXRETVAL=255          # 函数最大的返回值(正值).
SUCCESS=0
FAILURE=-1



#-------------------------------------------------------------------------------
# 有用的函数定义
#-------------------------------------------------------------------------------

usage()
{
	if [ -z "$1" ]       # 没有参数传递进来
	then
        msg=filename
	else
		msg=$@
	fi

	echo "Usage: `basename $0` "$msg""
}

check_if_root()
{
	if [ "$UID" -ne "$ROOT_UID" ]
	then
        echo "Must be root to run this script."
		exit $E_NOTROOT
	fi
}

create_temp_filename()
{
	prefix=temp
	suffix=`eval date +%s`
	temp_filename=$prefix.$suffix
}

isalpha()
{
	[ $# -eq 1 ] || return $FAILURE


	case $1 in
        *[!a-zA-Z]*|"") return $FAILURE;;
	    *) return $SUCCESS;;
	esac    # --- end of case ---
}

abs()
{
	E_ARGERR=-999999
	if [ -z "$1" ]
	then
		return $E_ARGERR
	fi

	if [ "$1" -ge 0 ]
	then
		absval=$1
	else
		let "absval = (( 0 - $1 ))"
	fi

	return $absval
} 

tolower()             #  将传递进来的参数字符串转换为小写
{
    if [ -z "$1" ]
	then
		echo "(null)"
		return
	fi

	echo "$@" | tr A-Z a-z

	return
}
# oldvar="A seT of miXed-caSe LEtTerS"
# newvar=`tolower "$oldvar"`

toupper()
{
    if [ -z "$1" ]
	then
		echo "(null)"
		return
	fi

	echo "$@" | tr a-z A-Z

	return
}
