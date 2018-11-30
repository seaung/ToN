#### Git安装
>>>
    yum install curl-devel expat-devel gettext-devel \
    openssl-devel zlib-devel

    apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \
    libz-dev libssl-dev

    download Git-srouce-code

    tar -zxf git-x.x.x.x.tar.gz
    cd git-x.x.x.x/
    make prefix=/usr/local all
    sudo make prefix=/usr/local install

    Mac 上安装Git
    http://sourceforge.net/projects/git-osx-installer/

#### Git配置
>>>
    1. 用户信息
       git config --global user.name "username"
       git config --global user.email "email@com"

    2. 文本编辑器
       git config --global core.editor emacs

    3. 差异分析工具
       git config --global merge.tool vimdiff

    4. 查看配置信息
       git config --list
       
