#!/bin/sh

#-----------------------------------------#
# siwind 编写。QQ: 35949934
#
#
# 2013-05-07: fix
#    1) add URL_RELOGIN to disconnect other user in another location!
#
#
#-----------------------------------------#

#用户名及密码设置
USERNAME=yourusername
PASSWD=yourpassword

URL_LOGIN=http://gw.bupt.edu.cn
URL_LOGOUT=http://gw.bupt.edu.cn/F.htm
URL_RELOGIN=http://gw.bupt.edu.cn/a11.htm


#-------------------------#
# 实现字符到ASCII码转换
#
# 使用: char2Ascii 字符
#-------------------------#
char2Ascii()
{
	local char=$1
	local ret=`printf "%d" "'$char"`
	echo $ret
}

#---------------------------#
# 实现字符串中某个字符到ASCII码转换
#
# 使用: charCodeAt 字符串 位置
# 位置-从0开始到字符串长度减一

#---------------------------#
charCodeAt()
{
	local str=$1
	local i=$2
	local char=${str:$i:1}
	local ret=`char2Ascii $char`
	echo $ret
}


#-----------------------#
#对用户密码加密的函数
#
#使用: 
# xproc1 参数
#-----------------------#
xproc1()
{
	EChars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

	local str=$1   #第一个参数, 传入的用户参数
	local len=`expr length $str`   #字符串长度


	local out=""
	local i=0
	local c1 c2 c3

	#echo $str len=$len

	while [ $i -lt $len ]
	do
		#echo value i = $i

		#--------处理第一个字符
		cur_char=${str:$i:1}
		cur_code=`char2Ascii $cur_char`
		#echo $cur_char and code=$cur_code 

		c1=$[$cur_code & 255]
		i=$[$i + 1]
		if [ $i -eq $len ] ; then 
                index=$[$c1 >> 2]
                charAt=${EChars:$index:1}
                out="$out"$charAt

                index=$[($c1 & 3) << 4]
                charAt=${EChars:$index:1}
                out="$out"$charAt

		out="$out""=="

			break
		fi


		#-------处理第二个字符
                cur_char=${str:$i:1}
		cur_code=`char2Ascii $cur_char`
                #echo $cur_char and code=$cur_code 

                c2=$cur_code
                i=$[$i + 1]
                if [ $i -eq $len ] ; then

                index=$[(($c1 & 3) << 4) | (($c2 & 240) >> 4)]
                charAt=${EChars:$index:1}
                out="$out"$charAt

                index=$[($c2 & 15) << 2 ]
                charAt=${EChars:$index:1}
                out="$out"$charAt
                
		out="$out""="

			break
                fi

		#---------处理第三个字符
                cur_char=${str:$i:1}
		cur_code=`char2Ascii $cur_char`
                #echo $cur_char and code=$cur_code 

                c3=$cur_code
                i=$[$i + 1]

                index=$[$c1 >> 2]
                charAt=${EChars:$index:1}
                out="$out"$charAt

                index=$[(($c1 & 3) << 4) | (($c2 & 240) >> 4)]
                charAt=${EChars:$index:1}
                out="$out"$charAt
		
		index=$[(($c2 & 15) << 2) | (($c3 & 192) >> 6)]
		charAt=${EChars:$index:1}
		out="$out"$charAt


                index=$[$c3 & 63]
                charAt=${EChars:$index:1}
                out="$out"$charAt

	done

	echo $out
}

calcMD5()
{
	local msg=$1
	local ret=`echo -n $msg|md5sum|cut -d ' ' -f1`
	echo $ret
}

#------------#
#
#
#-----------#

login1()
{
	upass=`xproc1 $PASSWD`
	echo login...
	RESULT=`curl --silent -d "DDDDD=$USERNAME&upass=$upass&R1=0&R2=0&para=00&0MKKey=123456" "$URL_LOGIN"`
	echo login OK!
}

login()
{
	tmp="1"$PASSWD"12345678"
        upass=`calcMD5 $tmp`
	upass=$upass"123456781"
        echo login...
        RESULT=`curl --silent -d "DDDDD=$USERNAME&upass=$upass&R1=0&R2=1&para=00&0MKKey=123456" "$URL_LOGIN"`
        echo login OK!
}

logout()
{
	echo logout...
	RESULT=`curl --silent "$URL_LOGOUT"`
	echo logout OK!
}

relogin()
{
#DDDDD=username&upass=pass&AMKKey=

	RESULT=`curl --silent -d "DDDDD=$USERNAME&upass=$PASSWD&AMKKey=" "$URL_RELOGIN"`
}

usage()
{	
echo "Usage: $0 [-i|-o] "
	echo "where:     -i login to bupt school network"
	echo "           -o logout from bupt school network"
	echo 
	exit
}

if [ $# -lt 1 ] ; then
	usage
	exit
fi

case $1 in
-i)
	relogin	
	#login1;;
        login;;
-o)
        logout;;
*)
	usage;;
esac

#PASS_ENC=`xproc1 $PASSWD`
#echo 加密的密码为： $PASS_ENC

