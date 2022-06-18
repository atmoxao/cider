# DevLanguage

## 各类环境

### Python

自带的够用了，本人一般不用py进行开发

```bash
sudo apt install python3-pip

pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
```

### PHP

使用 [lnmp](https://lnmp.org/) 一键安装包 安装 php7.4和nginx 不使用它的数据库

```bash
wget http://soft.vpser.net/lnmp/lnmp1.9.tar.gz -cO lnmp1.9.tar.gz && tar zxf lnmp1.9.tar.gz && cd lnmp1.9 && ./install.sh lnmp

# 注释 /usr/local/php/etc/php.ini disable_function

composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
```


### Golang

源码安装

```bash
wget https://studygolang.com/dl/golang/go1.18.3.linux-amd64.tar.gz
tar -zxvf go1.18.3.linux-amd64.tar.gz
sudo mv go /usr/local/go 
# 增加环境变量 
# https://github.com/goproxy/goproxy.cn/blob/master/README.zh-CN.md
sudo vim /etc/profile
export PATH=$PATH:/usr/local/go/bin

vim .bashrc
export GOPATH=~/.go
export GOPROXY=https://goproxy.cn  
export GO111MODULE=on
```

### Node

```bash
wget https://nodejs.org/dist/v16.15.1/node-v16.15.1-linux-x64.tar.xz

tar xf node-v16.15.1-linux-x64.tar.xz
sudo mv node-v16.15.1-linux-x64 /usr/local/node
# 增加环境变量   sudo vim /etc/profile
npm set registry http://registry.npmmirror.com
```

### Rust

> 主要是一下工具需要用上

```bash
curl https://sh.rustup.rs -sSf | sh

source $HOME/.cargo/env

tee  .cargo/config <<EOF
[source.crates-io]
registry = "https://github.com/rust-lang/crates.io-index"
replace-with = 'ustc'
[source.ustc]
registry = "git://mirrors.ustc.edu.cn/crates.io-index"
EOF


```

### 各类中间件在开发的时候习惯用 docker安装使用

## mysql+mysql-admin+redis

[https://gist.github.com/atmoxao/2cc3be2bdd300b82b4f0e95cd91faa5e](https://gist.github.com/atmoxao/2cc3be2bdd300b82b4f0e95cd91faa5e)

