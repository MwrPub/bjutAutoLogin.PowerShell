$DATE = "$(Get-Date -Format 'yyyy-mm-dd HH:MM:ss')"

$uname = "10000000" # 你的学号
$upass = "12345678" # 你的网关密码
$udata = "DDDDD=$uname&v46s=1&v6ip=&0MKKey=&upass=$upass"
$result = "$((curl 'https://lgn.bjut.edu.cn/' -method post -body $udata 2> $null).Content | select-string 'You have successfully logged into our system.')"
if($result -eq ""){
	echo "$DATE Failed"
}else{
	echo "$DATE Success"
}