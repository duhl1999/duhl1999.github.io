---
title: VASP输出文件
tags: [VASP,教程,输出文件]
date: 2020-12-30 09:41:35
update: 2020-12-30 09:41:35
categories: VASP
---
# 2 输出文件
输出文件主要包括：  
`CHG`,`CHGCAR`,`CONTCAR`,`DOSCAR`,`EIGENVAL`,`IBZKPT`,`OSZICAR`,`OUTCAR`,`REPORT`,`vasprun.xml`,`WAVECAR`,`XDATCAR`

本篇内容较长，比较重要的输出文件使用`"※ ※"`进行了重点标注

<!-- more -->


## 2.1 CHG
包含晶格矢量，原子核最表和电荷密度信息。结构优化和分子动力学模拟每十步储存一次

可以在`INCAR`中通过`LCHARGE = .FALSE`关闭输出

## 2.2 CHGCAR
包含最终结构的晶格矢量，原子核坐标和电荷密度信息

可以在`INCAR`中通过`LCHARGE = .FALSE`关闭输出

重启vasp计算或者做DOS，能带计算可以从这个文件中读取电荷信息

## 2.3 ※CONTCAR※
vasp最后输出的结构信息，包括结构信息和每个原子的速度，格式与POSCAR一样，可以直接复制

对于单点能计算，`CONTCAR`和`POSCAR`完全一样

对于结构优化，`CONTCAR`是优化到最后一步的结构

对于分子动力学计算，`CONTCAR`是最后一步MD外推的结构，并且包含速度和预矫正(predictor-corrector coordinates)信息

无论那种计算，中断后都可以把`CONTCAR`复制成`POSCAR`继续计算

## 2.4 DOSCAR
储存DOS和DOS积分值信息。DOS:density of state态密度

## 2.5 EIGENVAL
输出本征值信息：轨道能量和电子占据

每个k点分别对应一套

## 2.6 IBZKPT
vasp自动生成的k电信系，格式与KPOINTS一样，可以直接复制

## 2.7 ※OSZICAR※和标准输出文件(out.log)
储存电子步迭代收敛和能量信息，简洁明了

标准输出文件多了计算初始化过程中的一些基本信息:
```
 running on   24 total cores
 distrk:  each k-point on   24 cores,    1 groups
 distr:  one band on    1 cores,   24 groups
 using from now: INCAR     
 vasp.5.4.1 24Jun15 (build Aug 19 2019 20:28:00) complex                        
  
 POSCAR found type information on POSCAR  Al O 
 POSCAR found :  2 types and      10 ions
 scaLAPACK will be used
 LDA part: xc-table for Pade appr. of Perdew
 POSCAR found type information on POSCAR  Al O 
 POSCAR found :  2 types and      10 ions
 POSCAR, INCAR and KPOINTS ok, starting setup
 WARNING: small aliasing (wrap around) errors must be expected
 FFT: planning ...
 WAVECAR not read
 WARNING: chargedensity file is incomplete
 WARNING: random wavefunctions but no delay for mixing, default for NELMDL
```


SCF迭代的输出，程序默认使用DAV(blocked Davidson interation scheme阻尼戴维森迭代方法) 取决于`INCAR`中`ALGO = Normal`
```
 entering main loop
       N       E                     dE             d eps       ncg     rms          rms(c)
DAV:   1     0.102544314961E+03    0.10254E+03   -0.20873E+04  6552   0.760E+02
DAV:   2    -0.783175035641E+02   -0.18086E+03   -0.17286E+03  9312   0.179E+02
DAV:   3    -0.839200063663E+02   -0.56025E+01   -0.55989E+01  7560   0.315E+01
DAV:   4    -0.839485173787E+02   -0.28511E-01   -0.28510E-01  9360   0.263E+00
DAV:   5    -0.839488363125E+02   -0.31893E-03   -0.31893E-03  7944   0.271E-01    0.182E+01
DAV:   6    -0.748689466073E+02    0.90799E+01   -0.20084E+01  7272   0.213E+01    0.642E+00
DAV:   7    -0.748616584673E+02    0.72881E-02   -0.48800E-01  8232   0.305E+00    0.356E+00
DAV:   8    -0.748644005529E+02   -0.27421E-02   -0.67091E-02  8712   0.162E+00    0.873E-01
DAV:   9    -0.748726178380E+02   -0.82173E-02   -0.14378E-02  8760   0.584E-01    0.292E-01
DAV:  10    -0.748738821757E+02   -0.12643E-02   -0.15127E-03  7896   0.173E-01    0.619E-02
DAV:  11    -0.748738509679E+02    0.31208E-04   -0.84883E-05  7560   0.564E-02
```
具体信息：  
        N：步数;  
        E：当前能量;  
        dE：能量差；  
        d eps：能带能量变化;  
        rms：（波函数）方均根;  
        rms(c)：该步和上一步电荷密度差值


最下一行:
```
   1 F= -.74873851E+02 E0= -.74873851E+02  d E =-.865390E-12
 writing wavefunctions
```
1代表离子步的步数   
F=体系总能量(包含电子熵entropy)    
E0=修正电子熵后的能量(energy(sigma->0):)   
dE两个离子步差值（但单点能只有一个点，所以只有一个离子步）

※※读取时要读取最后一个E0能量

## 2.8 ※OUTCAR※
VASP输出的细节信息  
可以在`INCAR`中`NWRITE=0|1|2|3|4`控制输出的详细程度(默认2)  
建议MD计算时候用1，其他用2

可以根据开始计算时的电子步耗时来大致估算计算所需时间:
```
$ cat OUTCAR | grep "LOOP"
      LOOP:  cpu time    1.9707: real time    2.5617
      LOOP:  cpu time    2.9006: real time    2.9174
      LOOP:  cpu time    2.3436: real time    2.5159
    ... ... ...
      LOOP:  cpu time    2.4166: real time    2.4274
      LOOP:  cpu time    2.5316: real time    2.7207
     LOOP+:  cpu time   30.9803: real time   33.1792
```
一般结构优化，可以接受电子步时间50s以内，MD 10s以内

输出的能量:
```
  free energy    TOTEN  =       102.54431496 eV
  energy without entropy =      102.54494669  energy(sigma->0) =      102.54463083
```
总能；通过估算电子熵，把TS从总能中减掉；外推sigma=0时的能量


迭代结束，输出费米能级信息和能带信息
```
 E-fermi :   5.3764     XC(G=0): -10.9667     alpha+bet :-14.8344

 k-point     1 :       0.0000    0.0000    0.0000
  band No.  band energies     occupation 
      1     -13.8611      2.00000
      2     -12.3739      2.00000
        ... ... ...
```
注:这里的E-fermi对应的时HOMO的能量，与实验上的费米能级不一样

最后会打印总结信息，包括收敛情况，耗时和晶胞的应力信息及力在每个原子上的信息，在凝聚态物理中有用:
```
------------------------ aborting loop because EDIFF is reached ----------------------------------------


    CHARGE:  cpu time    0.0460: real time    0.0648
    FORLOC:  cpu time    0.0020: real time    0.0033
    FORNL :  cpu time    0.2470: real time    0.2664
    STRESS:  cpu time    1.0388: real time    1.0692
    FORCOR:  cpu time    0.0110: real time    0.0383
    FORHAR:  cpu time    0.0020: real time    0.0202
    MIXING:  cpu time    0.0040: real time    0.0502
    OFIELD:  cpu time    0.0000: real time    0.0013

  FORCE on cell =-STRESS in cart. coord.  units (eV):
  Direction    XX          YY          ZZ          XY          YZ          ZX
  --------------------------------------------------------------------------------------
  Alpha Z    66.90706    66.90706    66.90706
  Ewald    -791.92409  -702.85439  -764.01879    23.38732    -7.24753    29.38922
  Hartree   261.54248   276.19919   271.27549     3.84846    -3.19885    12.97154
  E(xc)    -220.94191  -221.05716  -221.03388    -0.03026    -0.00165     0.00669
  Local    -145.59042  -238.85254  -185.50223   -24.48814     9.85428   -39.95975
  n-local   -88.16844   -83.95574   -86.43633     1.14972    -0.13786     0.48373
  augment    38.51644    37.73118    38.49293    -0.20619     0.03329    -0.13814
  Kinetic   876.19322   862.43347   876.77434    -3.81007     0.82666    -2.70689
  Fock        0.00000     0.00000     0.00000     0.00000     0.00000     0.00000
  -------------------------------------------------------------------------------------
  Total      -3.40239    -3.51220    -3.54141    -0.02883    -0.00344     0.01393
  in kB     -56.50412   -58.32779   -58.81293    -0.47885    -0.05707     0.23141
  external pressure =      -57.88 kB  Pullay stress =        0.00 kB
```

接下来，原子坐标和各个原子受力的信息：
```
 POSITION                                       TOTAL-FORCE (eV/Angst)
 -----------------------------------------------------------------------------------
      4.82522      0.32460      1.12442         0.005509     -0.001359     -0.003774
     -5.45573      2.85994      4.37695        -0.005509      0.001359      0.003774
      1.75701      1.08124      1.74271         0.001064     -0.000262      0.003714
     -2.38752      2.10330      3.75866        -0.001064      0.000262     -0.003714
      3.09725      0.75073      4.90198         0.008682     -0.002141      0.004484
     -3.72777      2.43381      0.59939        -0.008682      0.002141     -0.004484
     -0.58134      1.65789      4.08509         0.012264     -0.003024      0.015087
     -0.04917      1.52665      1.41628        -0.012264      0.003024     -0.015087
     -4.18451      2.54645      3.12154        -0.014792      0.003648     -0.002466
      3.55400      0.63809      2.37983         0.014792     -0.003648      0.002466
 -----------------------------------------------------------------------------------
    total drift:                                0.000084      0.000166     -0.000184
```

然后时最终能量：
```
  FREE ENERGIE OF THE ION-ELECTRON SYSTEM (eV)
  ---------------------------------------------------
  free  energy   TOTEN  =       -74.87385097 eV

  energy  without entropy=      -74.87385097  energy(sigma->0) =      -74.87385097
```

最后是总结，包括内存消耗和计算时长


## 2.9 REPORT
分子动力学(MD)的输出信息总结

## 2.10 vasprun.xml
包含vasp一些输出信息，比如DOS，能带，用p4vasp打开

## 2.11 WAVECAR
包含波函数信息，是二进制文件

重启vasp计算时从这里读取波函数信息作为初始猜测

可以在`INCAR`中通过`LWAVE = .FALSE`关闭输出

## 2.12 XDATCAR
在结构优化或者MD计算中保存每一步的结构信息
