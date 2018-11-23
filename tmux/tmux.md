#### Tmux 安装

>>>
    ubuntu:
	    sudo apt-get install tumx

	mac osx:
	    brew install tmux

#### 新建会话

>>>
    tmux new -s session-name

#### 查询会话
	tmux ls

#### 断开会话

>>>
	tmux detach or ctrl + b d

#### 重新连接会话

>>>
	tmux a -t session-name

#### 关闭会话

>>>
	tmux kill-session -t session-name

#### tmux常用快捷键

>>>
    note:在tmux会话中使用的快捷键都需要一个前缀来激活，即ctrl+b

	会话管理相关快捷键

	1. ctrl + b s 列出所有会话

	2. ctrl + b $ 重命名当前会话的名字

	3. ctrl + b d 断开会话

	窗口管理相关快捷键

	1. ctrl + b c 创建一个新的窗口

	2. ctrl + b , 重命名当前窗口

	3. ctrl + b w 列出所有窗口

	4. ctrl + b % 水平分割窗口

	5. ctrl + b " 竖直分割窗口

	6. ctrl + b n 选择下个窗口

	7. ctrl + b p 选择上个窗口

	8. 0-9        选择０－９对应的窗口

	窗格管理相关的快捷键

	1. ctrl + b % 创建一个水平窗格

	2. ctrl + b " 创建一个竖直窗格

	3. ctrl + b q 显示窗格的编号

	4. ctrl + b o 在窗格见切换

	5. ctrl + b } 与下一个窗格交换位置

	6. ctrl + b { 与上一个窗口交换位置
	
	7. ctrl + b ! 在新窗口中显示当前窗格

	8. ctrl + b x 关闭当前窗格

	其他

	1. ctrl + b t 在当前窗格显示时间

