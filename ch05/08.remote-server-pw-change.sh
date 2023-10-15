#!/bin/bash

pwfile="passwords"
IFS=':'
while read oldpw hostip newpw <&3
do
	echo $oldpw, $hostip, $newpw
	# sshpass -p $oldpw ssh -o StrictHostKeyChecking=no root@$hostip chpasswd <<< "root:$newpw"
	# sshpass -p $oldpw ssh -o StrictHostKeyChecking=no root@$hostip "echo root:$newpw | chpasswd"
	# sshpass -p $oldpw ssh root@$hostip chpasswd < <(echo "root:$newpw")
	# sshpass -p passwd ssh root@$hostip chpasswd < <(echo "educafe:$newpw")
	sshpass -p $oldpw ssh -o StrictHostKeyChecking=no educafe@$hostip "echo $oldpw | sudo -S bash -c 'echo educafe:$newpw | chpasswd'"
	# sshpass -p $oldpw ssh educafe@$hostip "echo $oldpw | sudo -S 2> /dev/null bash -c 'chpasswd < <(echo educafe:$newpw)'"
	
	if [ $? -eq 0 ]; then
		echo "Password change successful"
	else
		echo "Password change failed"
	fi
	sleep 2
done 3< $pwfile


# chpasswd 명령은 root 권한을 필요로 한다. 따라서 일반 사용자는 실행할 수 없고,
# sudo 권한을 가진 사용자의 경우 sudo 명령을 실행하기 위한 사용자 비밀번호 입력이 필요하다
# chpasswd 명령은 사용자 비밀번호를 터미널 장치에서부터 입력 받는 것이 기본이며, 
# -S 옵션을 사용하여 stdin에서 입력을 받을 수 있다. 즉 pipe를 사용할 수 있다

# 파일을 읽어들이는 루프 내에서 명령과 함께 파이프를 사용하는 경우 파이프된 명령은 
# 해당 파일의 나머지 입력을 모두 pipe로 읽어들이게 되어 파일에서 한줄만 읽어 들이게 된다
# 이 때 루프 내에서 읽어 들이는 파일의 fd를 0이 아닌 다른 값으로 변경하면 
# -S에 의해서 pipe로 흡수되는 것을 방지할 수 있다
