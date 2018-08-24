#!/bin/bash

#作者：logich|www.winner7.cn
#感谢nodebb-cn
#动画开始
clear
echo " _____      ______      ______     ______     ______     ______"
echo "/     \    /      \    |      \   |          |      \   |      \ "
echo "|     |   |        |   |      |   |          |      /   |      /"
echo "|     |   |        |   |      |   |——————    |——————    |——————"
echo "|     |   |        |   |      |   |          |      \   |      \ "
echo "|     |    \______/    |______/   |______    |______/   |______/"
sleep 3s
clear
echo "                            ________   _______   ___   _______ "
echo "      ◢ ██████    |         |      |   |          |    |              |      |"
echo "    ◢ ████████    |         |      |   |          |    |              |      |"
echo "  ◢ ██████████    |         |      |   |  ———|    |    |         ██   |______|"
echo "◢ ██████████◤     |         |      |   |     |    |    |              |      |"
echo "     █████◤       |         |      |   |     |    |    |              |      |"
echo "     ███◤         |______   |______|   |_____|   _|_   |______        |      |"
sleep 3s
clear
echo "鸣谢 nodebb .Inc nodebb中文社区 以及 nodebb中国 群"
echo "Thanks for nodebb .Inc nodebb-cn and nodebb中国 QQ group"
sleep 3s
echo "+------------------------------------------------------------------------+"
echo "|     nodebb快速安装脚本 Quick installation script for nodebb on CentOS    |"
echo "+------------------------------------------------------------------------+"
echo "|                A tool to auto-compile & install NodeBB                 |"
echo "+------------------------------------------------------------------------+"
echo "|        For more information please visit https://WWW.WINNER7.CLUB      |"
echo "|             NODEBB CHINA WEB  https://about.nodebb-cn.org              |"
echo "|                         脚本编写于 logic H                               |"
echo "+------------------------------------------------------------------------+"

#正文开始

#函数
ask_user(){
	echo -e "\e[92m\e[41m$3\e[39m\e[49m"
	while true
	do
		read -p "请输入 $1" USER_INPUT
		echo "$1" | tr "/" "\n" | grep -Eiq "^${USER_INPUT}$" && eval "$2=\"$USER_INPUT\"" && break
	done
}
INFO="[INFO][`date +%Y-%m-%d` `date +%H:%M:%S`]"
echo -e "\e[101m[WARN]所有选择请使用小写字符|[WARN]All options use Lowercase letters\e[49m"
ask_user "y/n" "YES_OR_NO" "您需要切换到英文吗？|Do you want to use English?"
[ "$YES_OR_NO" = "y" ] && {
    L1="Quick installation script for nodebb on Ubuntu"
    L2="[IMPORTANT]We need to make sure that the yum is not occupied and that the software will be update,Otherwise we will fail."
    L3="Start getting parameters"
    L4="Is your server overseas or in mainland China? It doesn't matter, but it affects speed."
    L5="Please use M/O, M to represent the mainland, O means overseas; if you want to use official downloads, please input O."
    L6="Successfully"
    L7="Which database do you want to use,redis or mongoDB?"
    L8="Please use R/M, R to represent redis, and M to represent mongoDB."
    L9="Database redis"
    L10="Enter the password of redis"
    L11="It is detected that you have installed redis-server in the system. Have you set the password?"
    L12="Please use Y/N, Y means yes, N means no."
    L13="We will not set password for you,please remeber your old password"
    L14="Enter the password of redis"
    L15="Database mongoDB"
    L16="Enter the path for nodebb."
    L17="Please do not create folders, we will create automatically for you."
    L18="We will use yum. We need to make sure that yum is not occupied, and we will update the software."
    L19="Yum update completed"
    L20="Start installing curl"
    L21="successfully"
    L22="Start installing vim"
    L23="Successfully"
    L24="Start installing nvm"
    L25="Successfully"
    L26="Start setting up NVM variable"
    L27="Successfully"
    L28="Nodejs fast script is running."
    L29="Nodejs installation completed"
    L30="Start installing redis"
    L31="successfully"
    L32="Redis security settings completed"
    L33="successfully, Please check if there has error."
    L34="Read the system information successfully,start setting source."
    L35="Start installing mongoDB"
    L36="successfully"
    L37="Please complete the security settings yourself, press enter to continue, Ctrl+C quit."
    L38="Start installing git"
    L39="successfully"
    L40="Clone nodebb completed"
    L41="Start installing nodebb"
    L42="Next, please install nodebb with yourself"
    L43="Start setting source"
    L44="Successfully"
    L45="Please enter your http:// server ip:4567 in the browser address bar for visual installation nodebb."
    L46="Do you want to install nginx? If it is your first installation, it is extremely not recommended that nginx be installed."
    L47="Server nginx"
    L48="Please input your web address."
    L49="Closing SELinux"
    L50="Successfully"
}
[ "$YES_OR_NO" = "n" ] && {
	L1="nodebb on CentOS快速设置脚本启动"
	L2="[重要]请确保yum没有被占用，否则将造成无法安装"
	L3="开始获取参数"
	L4="您的服务器在大陆还是海外？这无关紧要，但是影响速度\e[49m"
	L5="请使用M/O，M表示大陆，O表示海外；如果您想使用官方的下载，请输入O"
	L6="软件源设置成功"
	L7="您想使用那种数据库，redis还是mongoDB？"
	L8="请使用R/M，R表示redis，M表示mongoDB"
	L9="数据库redis"
	L10="输入用于redis的密码"
	L11="检测到系统中存在redis-server，您是否设置过它的密码？"
	L12="请使用Y/N，Y表示是，N表示否"
	L13="脚本将不再设置密码，请牢记您以前的密码"
	L14="输入用于redis的密码"
	L15="数据库mongoDB"
	L16="输入安装nodebb的路径"
	L17="请不要创建文件夹，我们将会为您自动创建"
	L18="正在设置apt，我们需要确保apt没有被占用，同时将更新软件"
	L19="系统源更新完成"
	L20="开始设置curl"
	L21="curl设置完毕"
    L22="开始安装vim"
    L23="vim安装完毕"
    L24="开始安装nvm"
    L25="nvm安装完毕"
    L26="开始设置nvm变量"
    L27="nvm变量设置完毕"
	L28="开始安装nodejs"
	L29="nodejs安装完成"
	L30="开始安装redis"
	L31="redis安装完成"
	L32="redis安全设置完成"
	L33="redis重新启动完成，请检查有无报错"
	L34="系统信息读取成功，开始设置源"
	L35="开始安装mongoDB"
	L36="mongoDB安装完成"
	L37="请自行完成安全设置，按下回车继续，Ctrl+C退出"
	L38="开始安装Git"
	L39="Git安装完成"
	L40="克隆nodebb完成"
	L41="开始安装nodebb"
	L42="nodebb安装程序接管窗口"
    L43="开始设置源"
    L44="源设置完毕"
    L45="请在浏览器地址栏中输入http://你的服务器ip:4567进行可视化安装nodebb"
    L46="您是否要安装nginx？如果是初次安装，极其不推荐不安装nginx"
    L47="服务器nginx"
    L48="请输入您的网址"
    L49="正在关闭selinux"
    L50="selinux已关闭"
}
echo -e "\e[44m$INFO$L1\n$L2\n$L3$L3"
ask_user "m/o" "YES_OR_NO" "$L4\n$L5"
[ "$M_OR_O" = "m" ] && {
    export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node
    export NVM_IOJS_ORG_MIRROR=http://npm.taobao.org/mirrors/iojs
	echo -e "\e[44m$INFO$L6\e[39m\e[49m"
}
ask_user "y/n" "YES_OR_NO" "\e[44m$L46"
[ "$YES_OR_NO" = "y" ] && {
    echo -e "\e[92m$L47"
    setdb=Y
[ -z "$(which nginx)" ] && {
echo "[nginx]\nname=nginx repo\nbaseurl=http://nginx.org/packages/rhel/$releasever/x86_64/\ngpgcheck=0 \nenabled=1" > /etc/yum.repos.d/nginx.repo
yum -y install nginx.x86_64
}
echo -e "\e[41m$L48\e[49m\e[39m"
read DOMAIN
cat <<-EOF > /etc/nginx/nginx.conf
server {
    listen 80;

    server_name $DOMAIN; # 你的域名

   location / {
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header Host $http_host;
        proxy_set_header X-NginX-Proxy true;

        proxy_pass http://127.0.0.1:4567;
        proxy_redirect off;

        # Socket.IO Support
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
    
    # 配置 502 页? 参考: 高级 - 配置 Nginx
}
EOF
    }
ask_user "r/m" "R_OR_M" "$L7\n$L8"
[ "$R_OR_M" = "r" ] && {
	echo -e "\e[92m$L9"
	setdb=R
    [ -z "$(which redis-server)" ] && {
		echo -e "\e[41m$L10\e[49m\e[39m"
		read password 
        }
    [ -z "$(which redis-server)" ] || {
		ask_user "y/n" "YES_OR_NO" "$L11\n$L12"
	[ "$YES_OR_NO" = "y" ] && {
		echo -e "\e[92m$L13"
		setpw=N
	}
	[ "$YES_OR_NO" = "n" ] && {
		echo -e "\e[41m$L14\e[49m\e[39m"
		read password 
		setpw=Y
	    }
    }
}
[ "$R_OR_M" = "m" ] && {
	echo -e "\e[92m$L15"
	setdb=M
}
echo -e "\e[44m$INFO$L49\e[49m"
if [ -e "/etc/sysconfig/selinux" ]; then
    sed 's/SELINUX = abled/SELINUX = disable'
    fi
echo -e "\e[44m$INFO$L50\e[49m"
echo -e "\e[92m$L16\n$L17\e[39m"
 read path
echo -e "\e[44m$INFO$L18\e[49m"
yum -y update
echo -e "\e[44m$INFO$L19\e[49m"
echo -e "\e[44m$INFO$L20\e[49m"
[ -z "$(which curl)" ] && {
	yum -y install curl
    }
echo -e "\e[44m$INFO$L21\e[49m"
[ -z "$(which vim)" ] && {
echo -e "\e[44m$INFO$L22\e[49m"
    yum -y install vim
echo -e "\e[44m$INFO$L23\e[49m"
    }
[ -z "$(which npm)" ] && {
echo -e "\e[44m$INFO$L24\e[49m"
    sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
echo -e "\e[44m$INFO$L25\e[49m"
    }
echo -e "\e[44m$INFO$L26\e[49m"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc
echo -e "\e[44m$INFO$L27\e[49m"
[ -z "$(which node)" ] && {
echo -e "\e[44m$INFO$L28\e[49m"
    nvm install --lts
	echo -e "\e[44m$INFO$L29\e[49m"
    }
if [[ $setdb != "M"&&$setdb != "m" ]]; then
	[ -z "$(which redis-server)" ] && {
    echo -e "\e[44m$INFO$L30\e[49m"
        yum -y install redis
        yum --enablerepo=remi install redis
        systemctl start redis
        echo -e "\e[44m$INFO$L31\e[49m"
	}
	if [[ $setpw == "Y"||$setpw == "y" ]]; then
		sed -i '1i requirepass $password \nbind 127\.0\.0\.1 \nrename-command FLUSHALL ""' /etc/redis/redis.conf
	fi
	echo -e "\e[44mr$INFO$L32\e[49m"
	service redis-server restart
	echo -e "\e[44m$INFO$L33\e[49m"
else
	[ -z "$(which mongo)" ] && {
    echo -e "\e[44m$INFO$L43\e[49m"
    echo "[mongodb-org-4.0]
    name = MongoDB Repository
    baseurl = https://repo.mongodb.org/yum/redhat/$releaserver/mongodb-org/4.0/x86_64/ 
    gpgcheck = 1 
    enabled = 1
    gpgkey = https://www.mongodb.org/static/pgp/server-4.0.asc" > /etc/yum.repos.d/mongodb-org-4.0.repo
    echo -e "\e[44m$INFO$L44\e[49m"
        yum -y update
        yum -y install mongodb-org
	echo -e "\e[44m$INFO$L36\e[49m"
    }
	if [[ $setpw != "N"||$setpw != "n" ]]; then
		echo -e "\e[101m$L31\e[49m"
		read
	fi
fi
[ -z "$(which git)" ] && {
	echo -e "\e[44m$INFO$L38\e[49m"
    yum -y install git
    echo -e "\e[44m$INFO$L39\e[49m"
    }
if [[ $sloacl == "M"||$slocal == "m" ]]; then
	sudo git clone -b v1.10.x https://gitee.com/nidb/NodeBB.git $path
else
	sudo git clone -b v1.10.x https://github.com/NodeBB/NodeBB.git $path
fi
echo -e "\e[44m$INFO$L40"
echo "$INFO$L41"
echo -e "$INFO$L42\e[49m"
firewall-cmd --zone=public --add-port=4567/tcp --permanent
firewall-cmd --zone=public --add-port=4567/udp --permanent
echo -e "$INFO$L45\e[49m"

$path/nodebb setup
$path/nodebb start
bash /3.0/3.0/run1-3.0.sh
