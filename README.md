# Linux-command
Linux基础命令学习 
- /bin :存储基本指令，如ls等。
- /boot:内核印象文件和引导加载程序。
- /etc：系统配置文件，各种软件,用户.服务的配置文件。
- /usr：调用的应用程序及文件都在这个目录，/usr/bin是系统的软件库。
    C语言头文件。
- /var:经常变化的文件，数据库，经常变化。
- /sbin:系统管理员使用的系统程序，超级用户的二进制文件。
- /tmp：系统文件，重启不保存。
- /dev:设备文件及设备驱动程序，用来访问外部设备。
# 基础命令
- [ls](https://github.com/zmmoo/Linux-command/blob/master/ls)
- [mkdir\mv\rm\touch\cp](https://github.com/zmmoo/Linux-command/blob/master/mkdir%5Ccp%5Cmv%5Crm)
- file 识别文件类型，也可以辨识文件的编码格式
- [ln\find\grep](https://github.com/zmmoo/Linux-command/blob/master/ln%5Cfind%5Cgrep)
- whereis filenaem  定位/返回指定名字的二进制文件、源文件和帮助文件路径
- which 找Linux命令文件并显示所在位置
- locate 查找符合样本条件的文档或目录
- cat 显示出文件的全部内容
- more\less: 可翻页显示
- cd [路径名]  切换目录  .. 上一级目录  ~ home目录 . 当前目录 -上一工作目录
- pwd 查看当前目录
- whoami 查看当前用户
- [diff\patch](https://github.com/zmmoo/Linux-command/blob/master/diff%5Cpatch)  
- [控制台指令](https://github.com/zmmoo/Linux-command/blob/master/%E6%8E%A7%E5%88%B6%E5%8F%B0%E5%91%BD%E4%BB%A4)
- .bash_history 存储历史命令 (history)
- dmesg 查看linux启动文件
- fdisk -l 显示所有磁盘分区  /etc/fstab (系统已经加载的文件系统)
- df -h 列出挂载点
- du 磁盘使用量
- mkfs 常见文件系统类型   mkfs -t filetype device   其中filetype为ext2 ext3 vfat
- mount  挂载设备   mount 存储设备  挂载点目录
- umount 卸载已挂载的文件系统  umount 存储设备位置/挂载点目录
- ps -u  查看当前所用进程  
- top   查看动态进程排名信息 
- wc :输出文件的行数、字数、字节数
- xargs 将前一个结果作为下一个的输入  eg: find / -name *.conf -type f -print|xargs tar cjf test.tar.gz
- 重定向：stdin  标准输入 0
stdout  标准输出 1     命令 >文件（覆盖）    命令>>文件（追加）
stderr     标准错误  2
- 命令>>文件1 2>>文件2（将文件传送到文件1，错误信息传到文件2）
命令&>>文件  是否成功都输出到文件中   命令 >>文件 2>&1错误信息也输出到文件中
# [环境变量](https://github.com/zmmoo/Linux-command/blob/master/%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F)
# [用户与权限管理](https://github.com/zmmoo/Linux-command/blob/master/%E5%BD%92%E6%A1%A3%E5%92%8C%E5%8E%8B%E7%BC%A9)
# [归档和压缩](https://github.com/zmmoo/Linux-command/blob/master/%E5%BD%92%E6%A1%A3%E5%92%8C%E5%8E%8B%E7%BC%A9)
