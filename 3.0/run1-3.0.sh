#!/bin/bash

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
    L1="[warn] be sure to type Y and continue after installation."
    L2="Do you install the forever daemon? (recommended installation)"
    L3="What search plug-ins do you want to install, dbserch (English only), Solr (recommended) or Elastic search"
    }
    [ "$YES_OR_NO" = "n" ] && {
    L1="[warn]请务必在安装完后输入y并继续"
    L2="是否安装forever守护程序？（推荐安装）"
    L3="请问你要安装何种搜索插件，dbserch（仅支持英文），solr（推荐）"
    }
ask_user "y/n" "YES_OR_NO" "$L1"
[ "$YES_OR_NO" = "y" ] && {
    ask_user "y/n" "YES_OR_NO" "$L2"
    [ "$YES_OR_NO" = "y" ] && {
    [ -z "$(which forever)" ] && {
    npm install forever -g
    }
    forever start app.js
    }
    echo -e "\e[44m$INFO$L3"
    ask_user "d/s" "DBSEACH_OR_SOLR" "$L3"
    [ "$DBSEACH_OR_SOLR" = "d" ] && {
    npm install nodebb-plugin-dbsearch
    echo "感谢使用 by logich"
    }
    [ "$DBSEACH_OR_SOLR" = "s" ] && {
    npm install nodebb-plugin-solr
    echo "感谢使用 by logich"
    }
     echo "感谢使用 by logich"
        }
        [ "$YES_OR_NO" = "n" ] && {
        echo "感谢使用 by logich"
        }