# Oh My Zsh 

<!--
## install Oh-My-Zsh
1. go to Oh My Zsh Github home page [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
2. click left code option
3. click right green code button
4. download OhMyZsh file to PC /home/user/downloads directory
5. run command: `unzip ohmyzsh-mater.zip`
6. run command `cd ohmyzsh-master/tool` change work directory 
7. run shell install file `./install.sh`

Allright! OhMyZsh installed finish!! so good!!!

-->

## 安装 zsh

### macOS 安装 zsh
``` sh
brew install zsh
```

### Ubuntu 安装 zsh

```
sudo apt install -y zsh
```

Arch (manjaro) 安装 zsh

```
sudo pacman -Sy zsh
```

---

## zsh 设置

### 查看系统已有的 shell

```
cat /etc/shells
```

**输出结果：**

```
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/usr/bin/sh
/bin/dash
/usr/bin/dash
/bin/zsh
/usr/bin/zsh
```
以上输出结果可以看到已经有 zsh 了

### 更改默认 shell

**执行命令：**

```
chsh -s /bin/zsh
```

重启系统！

### 查看当前使用的 shell

**执行命令：**

```
echo $SHELL
```

**输出结果：**

```
/bin/zsh
```

以上输出结果可以看到，默认的 shell 已经变成了 zsh 

---

## 安装 git 

安装 OhMyZsh 的过程中会从 Github 克隆 OhMyZsh 相关文件，所以必须安装 git

### macOS

``` sh
brew install git
```

### Ubuntu

``` sh
sudo apt-get -y install git
```

### Arch(Manjaro)

``` sh
sudo pacman -Sy git
```

---

## 安装 Oh My Zsh

1. 到 Oh My Zsh 的 Github 页面 [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
2. 点击 `code` 选项卡 [快捷按钮](https://github.com/ohmyzsh/ohmyzsh)
3. 点击右边的 `code` 绿色按钮,在下拉菜单中点击 `Download ZIP`, 来下载 Oh My Zsh 安装文件 [快捷按钮](https://github.com/ohmyzsh/ohmyzsh/archive/refs/heads/master.zip)，建议下载到 `~/Downloads` 目录下。下载好的文件名为 ohmyzsh-master.zip
4. 到下好的文件所在目录，执行 `unzip ohmyzsh-master.zip` 将文件解压，解压后得到 ohmyzsh-master 的目录
5. 执行 `cd ohmyzsh-master/tools` 进入 tools 目录
6. tools 目录里 有一个 install.sh 的 shell 脚本文件，这是 Oh My Zsh 的安装脚本。通过 `./install.sh` 来执行 install.sh 文件，进行 Oh My Zsh 的安装
7. 恭喜你，如无意外，Oh My Zsh 就已经安装好了

## Oh My Zsh 配置

### 安装 zsh 高亮插件

```
git clone https://gitee.com/hello-luiswu/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### 安装 zsh 命令补全插件

```
git clone https://gitee.com/hello-luiswu/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### 启用插件

1. 执行 `vim ~/.zshrc` 命令（前提是你安装了 vim），打开zsh的配置文件文件 

**找到以下内容：**

```
plugins=(git)
```

**替换以下内容：**

```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```
