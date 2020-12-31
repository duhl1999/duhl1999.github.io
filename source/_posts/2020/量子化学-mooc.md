---
title: 量子化学_mooc_NJU
tags: [量子化学,笔记,理论]
date: 2020-12-30 13:38:33
update: 2020-12-31 11:20:11
categories: 理论学习
---
2021年初，mooc平台学习南京大学黎书华 、李伟 、马晶的量子化学课程  
[MOOC](https://www.icourse163.org/learn/NJU-1462082163?tid=1462882445#)
<!-- more -->

# Chapter 1: of the Quantum Theory 量子力学的曙光
## Section 1: Blackbody Radiation黑体辐射 and Photoelectric Effect光电效应
### Blackbody Radiation
黑体：完全吸收照射到它上面全部辐射的物体  
planck:  
&emsp;&emsp;1.blackbody radiation was caused by the oscillations of the electrons  
&emsp;&emsp;2.the energies of the oscillators振子(E) were discrete离散的 and had the form $E=nh\nu$  (n is an interger; h is the Planck constant)  
可以推出：
$${\lambda_{max}}T=hc/4.965k_b$$
The equation is in accord with Wien displacement law(Wien位移定律)：
$${\lambda_{max}}T=2.9*10^{-3}m \cdot k$$
完美解释了实验观测到的频率能量分布图

### Photoelectric Effect
The ejection of electrons from the surface of a metal by radiation is called the photoelectric effect.  
爱因斯坦依据普朗克的理论成功解释了该现象  
$$KE=1/2mv^2=h\nu-\Phi$$
<center>hν: the energy of the incident photon</center>
<center>Φ: the work function of the metal  </center>

$$ \Phi = h\nu_0 $$

## Section 2: Hydrogen Atomic Spectrum氢原子光谱 and Bohr Theory
### Hydrogen Atomic Spectrum
Balmer series巴尔末系列:  符合 $1/n^2$的谱线  
Rydberg formula： 波速$\tilde{\nu}=R_H({1/n_1^2}-{1/n_2^2})$，$R_H=109677.581cm^{-1}$  
### Bohr Theory
波尔：库仑力等于向心力，能量量子化：
$$r=\frac{4\pi\hbar^2n^2}{m_ee^2}$$
据此可以计算波尔半径r，带入能量公式：
$$E=KE+V(r)=1/2m_ev^2-\frac{e^2}{4\pi\epsilon_0 r}=-\frac{e^2}{8\pi\epsilon_0 r}$$
With the allow radii半径 of the orbits轨道：
$$E_n=-\frac{m_ee^4}{8\epsilon^2h^2}\frac{1}{n^2}, n=1,2,3...$$

The observed spectrum of the hydrogen atom is due to transitions from one allowed energy state to another:
$$\Delta E=\frac{m_ee^4}{8\epsilon^2h^2}(\frac{1}{n_1^2}-\frac{1}{n_2^2})=h\nu$$
依据频率与波速关系$h\nu=hc\tilde{\nu}$：
$$\tilde{\nu}=\frac{m_ee^4}{8\epsilon^2ch^3}(\frac{1}{n_1^2}-\frac{1}{n_2^2})$$
<p align="right">--Rydberg formula</p>
可以用于计算eg: ionization energy电离能(IE)

#### 波尔进行的假设
1. 角动量是量子化的  
2. 存在一些稳定运动的轨道
3. 从一个低能态跃迁到一个高能态要吸收光子：吸收光的能量为能级差（Bohr跃迁条件）

#### 波尔提出的理论被称作旧量子论
对氢原子光谱给出了很好的描述  
但是具有局限性，不能预测其他复杂原子的光谱

## Section 3: de Broglie Wave and Heisenberg Uncertainty Principle
### de Broglie Wave
$$ \lambda =\frac{h}{p}\frac{h}{mv}$$
联系波动性和粒子性

### Heisenberg Uncertainty Principle
the position and the momentum of a particle cannot be specified确定 simultaneously同时 with unlimited precision无限精确：
$$\Delta x \Delta p \geq h$$
$$\Delta E \Delta t \geq h$$


# Chapter 2: