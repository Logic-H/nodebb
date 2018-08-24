# nodebb-on-Centos
nodebb on CentOS快速安装|by logic H

Now we support English (Partialy)

项目介绍

快速部署nodeBB的脚本 CentOS已经完成，由Logic H编写 CentOS由Gaein nidb编写 感谢nodebb中文社区

#更新日志 3.0  翻译了centos和ubuntu脚本英语 

#当前仅部分支持英语（已全部支持|由Logic H翻译ubuntu+CentOS），代码已经检测，最近的稳定版是 run3.0.sh，也就是latest版

食用方法

# CentOS食用方法

第一步

git clone https://github.com/Logic-H/nodebb.git /3.0

第二步

bash /3.0/3.0/run3.0.sh


第一步
文件说明

run-latest将会是最新版本，老旧版本用run-版本，注意，run-版本最新的与latest是相同的 由于3.0以下版本存在严重错误，暂未上传

当前功能（CentOS）

根据用户输入选择下载源（大陆为阿里、中科大镜像）
根据用户输入选择数据库（Redis/MongoDB）
根据用户输入为数据库进行安全设置（仅限Redis）
自动判断系统版本添加合适的源（MongoDB）
自动判断是否存在必须软件，没有则自动安装（编译安装过的软件无法实现）
高亮信息提示
软件架构

Shell

最后

本人和Geain都是Linux菜鸟，如果有错误或者改正建议还请指正 
未来版本将加入英文支持（已加入）
