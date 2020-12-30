---
title: VASP编译安装
tags: [VASP,编译安装]
date: 2020-12-29 16:32:13
categories: VASP
---

VASP是维也纳大学Hafner小组开发的进行电子结构计算和量子力学-分子动力学模拟软件包。它是目前材料模拟和计算物质科学研究中最流行的商用软件之一。

[官网http://www.vasp.at/](http://www.vasp.at/)

在本文中将记录其如何进行安装

<!-- more -->

# 预备软件包
```
sudo apt install make
```

# 安装INTEL编译器
在正常安装后，首先需要自行编译快速傅里叶变换相关库
```
cd /PATH/TO/INTEL/compilers_and_libraries_2020.4.304/linux/mkl/interfaces/fftw3xf
sudo chmod 777 .
make libintel64
```
至此，intel编译器安装完成

# 安装VASP
首先，加载INTEL编译器的环境变量  
`source /opt/intel/compilers_and_libraries_2020.4.304/linux/bin/compilervars.sh intel64`

然后进入VASP安装包界面，从`./arch/`文件夹中选择合适本机器的`makefile.include...`，将其重命名为`makefile.include`，并复制到vasp根目录下。

`make all`等待即可

编译会在`./bin/`文件夹下生成三个文件
```
vasp_gam
vasp_ncl
vasp_std
```
可以设置软连接
```
sudo ln -s ./bin/vasp_std /usr/bin/vasp_std
```

执行命令：
```
ulimit -s unlimited
mpirun -n 10 vasp_std
```