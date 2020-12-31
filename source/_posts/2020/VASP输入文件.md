---
title: VASP输入文件
tags: [VASP,教程,输入文件]
date: 2020-12-30 09:39:42
updated: 2020-12-30 09:39:42
categories: VASP
---

# 1 输入文件
常用的有这四个`INCAR`,`POSCAR`,`POTCAR`,`KPOINTS`

[所有输入文件介绍网址](https://cms.mpi.univie.ac.at/vasp/guide/node50.html)

<!-- more -->

## 1.1 INCAR
‘what to do and how to do it’
```
SYSTEM = fcc Si
ISTART = 0; ICHARG = 2
ENCUT = 240
ISMEAR = 0 #如何加弥散，处理分数占据的轨道
SIGMA = 0.1 #弥散的展宽[eV]
```
### 1.1.1 SYSTEM
`SYSTEM = fcc Si #任务名称`
计算任务名字

### 1.1.2 ISTART
`ISTART = 0 #是否读取WAVECAR中的波函数信息`

ISTART = 0|1|2|3

默认: ISTART = 1 (if WAVECAR file exists); 0(else)

是否读取波函数（`WAVECAR`是保存计算波函数文件）：

ISTART = 0:由程序初猜产生

ISTART = 1:从`WAVEVCAR`读取，如果不存在或者不兼容，则由程序初始猜测产生

ISTART = 2:读取`WAVECAR`并使用相同集组

ISTART = 3:重启分子动力学计算时使用，同时需要`WAVECAR`和`TMPCAR`文件


建议：用`ISTART = 1`稳妥


### 1.1.3 ICHARG
`ICHARG = 2 #控制如何做电荷密度初猜`

ICHARG = 0|1|2|4|10|11|12

默认: ICHARG = 2 (if ISTART=0); 0 (else)

VASP的电荷密度初猜（`CHGCAR`是保存电荷密度信息的文件）：

ICHARG = 0：从`WAVECAR`计算电荷信息，如果没有`WAVECAR`则自动调到`ICHARG=2`

ICHARG = 1：从`CHGCAR`读取电荷密度并进行外推，如果不存在`CHGCAR`，则进行初猜

ICHARG = 2：初猜，通过原子电荷密度叠加产生

ICHARG = 10|11|12：做非自洽计算时使用，电荷密度读取`CHGCAR`且保持不变，DOS和能带计算时使用

建议：用`ICHARG = 1`稳妥，除非特殊说明比如做DOS和band structure

### 1.1.4 ENCUT
`ENCUT = 240 #平面波的截断能`

默认：ENCUT = `POTCAR`(赝势文件)给出建议范围的最大值

建议：一般400eV对计算表面足够

### 1.1.5 ISMEAR SUGMA
`ISMEAR = 0 #如何加弥散，处理分数占据的轨道`
`SIGMA = 0.1 #弥散的展宽[eV]`

ISMEAR = -5|-4|-3|-2|-1|0|[整数]>0

SIGMA = [实数]

默认： ISMEAR = 1
      SIGMA = 0.2

控制VASP如何处理费米能级附近分数占据轨道，为了快速收敛到积分的精确解

ISMEAR = N(>0)：method of Methfessel-Paxton order N（可能导致负占据）

ISMEAR = 0:Gaussian smearing

ISMEAR = -1: Fermi-Dirac smearing

ISMEAR = -2: 分数占据从`WAVECAT`或者`INCAR`中读

ISMEAR = -4: tetrahedron method

ISMEAR = -5: tetrahedron method with Blochl corrections

建议：

    金属（没有带隙的体系）：ISMEAR = 1; SIGMA = 0.2

    绝缘体或者半导体：ISMEAR = 1; SIGMA = 0.05

    DOS计算（态密度）或高精度计算：ISMEAR = -5; SIGMA可以忽略，也可以不管（VASP会自动略过）

    分子计算：ISMEAR = 0; SIGMA = 0.01

!!!加弥散会引入电子熵!!!



## 1.2 KPOINTS
在VASP-5.1.12及以后，KPOINTS可以缺省，K点写在INCAR中。但不建议这样做

KPOINTS越多，包含在计算中的信息越多，计算结果越准确

一般选取高对称点和高对称点间的连线。

```
Name # 第一行随便写
0 # 零，格子自动生成
G # Gamma centered Monkhorst-Pach grids(用mp方法取k点)
1 1 1 # 每个晶格矢量上都取一个k点
0.0 0.0 0.0 # No shift
```

### 每个晶格矢量上都取k点
VASP不会将所有k点都计算，会根据对称性省掉一些点

取点方式：比如一个晶胞a=b=5,c=15，则可以取值3 3 1

对于晶胞常数a和取的k点：

                    d区金属：ka~=30
                    简单金属：ka~=25
                    半导体：ka~=20
                    绝缘体：ka~=15
                    原子分子：1 1 1

k点选取时要进行收敛性测试：增加k点能量也不会差别很大，则已经收敛

## 1.3 POSCAR
结构文件
```
O atom in a box #名称
 1.0 # 扩展系数（表示下面的晶格矢量和坐标都要乘1.0）
 8.0 0.0 0.0
 0.0 8.0 0.0
 0.0 0.0 8.0 # 晶格矢量
O # 存在的元素（空格隔开）
1 # 与上面对应原子的数目
Cartesian # 笛卡尔坐标（也可以写Direct 写分数坐标）
coordinates
 0 0 0 # 坐标信息
```

## 1.4 POTCAR

赝势文件

官网下载
