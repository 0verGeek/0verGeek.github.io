---
profileName: admin
postId: "362"
postType: post
categories:
  - 1
tags:
  - VScode
---
## 安装VScode 
首先前往VScode官网下载安装包：[https://code.visualstudio.com/]
打开安装包后根据指引安装，点击`下一步`
![QQ20251002-102531.png](http://tuchuang.overgeek.online/picgo/QQ20251002-102531.png)
自定义VScode的安装位置，这里选在D盘的根目录，点击`下一步`
![image.png](http://tuchuang.overgeek.online/picgo/20251002121909.png)
下面这里要注意，把所有选项都勾选，点击`下一步`
![image.png](http://tuchuang.overgeek.online/picgo/20251002122036.png)
最后就是点击`安装`
![image.png](http://tuchuang.overgeek.online/picgo/20251002122324.png)

>注意：在添加任何环境变量以后都需要重启电脑才能被VScode识别到！

## VScode基础配置
首先在左侧拓展栏中搜索Chinese，点击`install`安装汉化插件
![image.png](http://tuchuang.overgeek.online/picgo/20251002135046.png)
安装后会在界面右下角提示语言已改变，点击`Change Language and Restart`以应用更改
![image.png](http://tuchuang.overgeek.online/picgo/20251002135144.png)
下面再安装`C/C++`以及`C/C++ Extension...`插件
![image.png](http://tuchuang.overgeek.online/picgo/20251002135654.png)

>如果VScode右下角有任何提示，直接点击蓝色选项就好，一般是要进行软件重启或安装一些推荐的插件

## 安装编译器
C语言的编译器有很多种选择，包括`GCC`、`LLVM Clang`、`MSVC`等，它们的差别和特点参考这里[这里](https://www.w3cschool.cn/article/1565347.html?headopt=&tpl=&pf=&nocache=0)。在安装`C/C++`插件后的欢迎页面中，VScode提供了编译器安装的官方文档，包含`MSVC`和`MinGW`的安装教程。本次我们以安装`MinGW`为例，安装其他编译器可以在网上搜索对应教程。

### 安装MSYS2
点击`在带MinGW的Windows上安装GCC`，如果没找到欢迎页面的话可以直接访问[https://code.visualstudio.com/docs/cpp/config-mingw]
![image.png](http://tuchuang.overgeek.online/picgo/20251002141427.png)
在官方文档中找到`MSYS2`的安装链接，或直接点击[这里](https://github.com/msys2/msys2-installer/releases/download/2024-12-08/msys2-x86_64-20241208.exe)下载程序。
![image.png](http://tuchuang.overgeek.online/picgo/20251002142315.png)
>在安装`MSYS2`时可以自己选择安装路径，但是一定要记好安装位置，后续添加编译器的环境变量时会用到
### 安装GCC
下面需要打开MSYS2并运行以下指令，可以复制后在MSYS2中右键选择`paste`粘贴，然后按`Enter`键运行
``` shell
pacman -S --needed base-devel mingw-w64-ucrt-x86_64-toolchain
```
>MSYS2中的粘贴快捷键不是`Ctrl + V`了，而是`Shift + Insert`

当安装指令运行到下面时，按回车键以使用默认配置
![image.png](http://tuchuang.overgeek.online/picgo/20251002142957.png)
再运行到后面时，会询问是否继续安装(Y/N)?输入`Y`并回车即可，最终安装完成后会如下图所示
![image.png](http://tuchuang.overgeek.online/picgo/20251002143827.png)
### 将安装好的GCC添加至环境变量
首先在win的搜索框中搜索`env`或`环境变量`找到`编辑系统环境变量`并打开，也可以`右键“此电脑”-->属性-->高级系统设置`
![image.png](http://tuchuang.overgeek.online/picgo/20251002144125.png)
点击`环境变量(N)`，选择`Path`，点击`编辑(E)`
![image.png](http://tuchuang.overgeek.online/picgo/20251002144607.png)
在Path的编辑页面选择`新建`，如果MSYS2使用的是默认安装路径，则可复制`C:\msys64\ucrt64\bin`到新建的文本框中。若MSYS2为自定义安装路径，则需将``C:\msys64修改为自定义安装路径，后面的`\ucrt64\bin``不变
![image.png](http://tuchuang.overgeek.online/picgo/20251002145052.png)

同样的操作可以在`系统变量`中再进行一遍
![image.png](http://tuchuang.overgeek.online/picgo/20251002145537.png)
新建完成后一直点击`确定`直至窗口关闭
### 验证环境变量是否添加成功
右键任务栏中的`Win图标`选择`终端`，或按`Win + R`，输入`cmd`并回车打开终端，
执行以下命令：
``` shell
gcc --version
g++ --version
gdb --version
```
如果环境变量配置成功，则会出现以下结果
![image.png](http://tuchuang.overgeek.online/picgo/20251002150209.png)
>如果执行结果为红色的报错信息，请检查环境变量设置的路径是否正确，能在相应目录下找到`gcc.exe`、`g++.exe`等则代表路径正确

## 验证Hello world程序
在电脑中创建一个文件夹，命名为`test`或其他不含中文的名称。同时，文件夹所在的路径也最好不要有中文。创建好后打开文件夹，右键选择`通过Code打开`
![image.png](http://tuchuang.overgeek.online/picgo/20251002150802.png)
>如果找不到`通过Code打开`，请点击`显示更多选项`，然后就能找到了。如果还没有，那就是在安装VScode时没有勾选`将“通过Code打开”操作添加到Wndows资源管理器目录上下文菜单`，建议将VScode卸载重装

打开VScode后，选择`是，我信任此作者`
![image.png](http://tuchuang.overgeek.online/picgo/20251002151347.png)
然后在左上角资源管理器中新建一个`test.c`文件，注意要在命名时要把`.c`后缀也加上
![image.png](http://tuchuang.overgeek.online/picgo/20251002151519.png)
按`Ctrl + Shift + P`打开命令面板，输入`Select IntelliSense Configuration`
![QQ20251002-111638.png](http://tuchuang.overgeek.online/picgo/QQ20251002-111638.png)
选择`使用gcc.exe`
![QQ20251002-111656.png](http://tuchuang.overgeek.online/picgo/QQ20251002-111656.png)
在test.c中输入以下代码，并按`Ctrl + S`保存
```c
#include <stdio.h>

int main()
{
	printf("Hello world!");
	return 0;
}
```
点击右上角三角形旁的下拉箭头，选择`运行C/C++文件`
![image.png](http://tuchuang.overgeek.online/picgo/20251002152456.png)
在下方终端处得到运行结果，大功告成！
![image.png](http://tuchuang.overgeek.online/picgo/20251002152740.png)
