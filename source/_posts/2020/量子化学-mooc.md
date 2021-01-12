---
title: 量子化学_mooc_NJU
tags: [量子化学,笔记,理论]
date: 2020-12-30 13:38:33
update: 2021-01-12 12:04:11
categories: 理论学习
---
2021年初，mooc平台学习南京大学黎书华 、李伟 、马晶的量子化学课程  
[MOOC](https://www.icourse163.org/learn/NJU-1462082163?tid=1462882445#)
<!-- more -->

# Chapter 1: The dawn of the Quantum Theory 量子力学的曙光
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


# Chapter 2: The Postulates and General Principles of Quantum Mechanics

## Section 1: Wave Functions, Operators and Eigenvalues

### Postulate 1: wave function
The state of a quantum-mechanical system is completely specified by a wave function that depends upon the coordinates of all particles in the system.
$$\Psi=\Psi(x_1,y_1,z_1,...,x_n,y_n,z_n,t)$$

Born: For a 3D one-particle system, the quantity $\Psi(x',y',z',t)\Psi^*(x',y',z',t)dxdydz$ is the probability of finding the particle in the infinitesimal volume element $dxdydz$, located at the point$(x',y',z')$ at time $t$

#### The Wave Function should be Normalized:
$$\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} |\Psi(x,y,z,t)|^2dxdydz = 1$$
For a many-particle system, the total probability of find all the patricle is unity:
$$\int_{-\infty}^{\infty}...\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}|\Psi(\vec{r},t)|^2dx_1dy_1dz_1...dx_ndy_ndz_n = 1$$

$$\int_{-\infty}^{\infty}|\Psi|^2d\tau=1$$

#### Other Requirements
2. The wave function must be single-valued, finite, and quadratically integrable 单值，连续，平方可积
3. The wave function and ins first derivatives must be continuous 连续可微

The wave function meeting these requirements is said to be **well-behaved** 品优函数


### Postulate 2: Operator
To every observable in classical mechanics, there corresponds a quantum-mechanical operator算符 that is linear线性 and hermitian厄米

>position: $x$ ---- $\hat{X}$ ---- x  

>Momentum: $p_x$ ---- $\hat{P_x}$ ---- $-i\hbar \frac{\partial}{\partial x}$  

>Momentum: $\vec{p}$ ---- $\hat{\vec{P}}$ ---- $-i\hbar (\vec{i}\frac{\partial}{\partial x}+\vec{j}\frac{\partial}{\partial y}+\vec{k}\frac{\partial}{\partial z})$  

>Kinetic energy: $T_x$ ---- $\hat{T_x}$ ---- $-\frac{h^2}{2m}\frac{\partial^2}{\partial x^2}$  

>Kinetic energy: $\vec{T}$ ---- $\hat{\vec{T}}$ ---- $-\frac{h^2}{2m}(\frac{\partial^2}{\partial x^2}+\frac{\partial^2}{\partial y^2}+\frac{\partial^2}{\partial z^2})=-\frac{h^2}{2m}\nabla^2$

>Potential energy: $V(x,y,z)$ ---- $\hat{V}(\hat{x},\hat{y},\hat{z})$ ---- $V(x,y,z)$

>Total energu: $E$ ---- $\hat{H}$哈密顿算符 ---- $-\frac{h^2}{2m}\nabla^2+V(x,y,z)$

For a 3D system with n particles:
$$E=\frac{p_{x_1}^2+p_{y_1}^2+p_{z_1}^2}{2m_1}+...+\frac{p_{x_n}^2+p_{y_n}^2+p_{z_n}^2}{2m_n}+V(x_1，y_1,z_1,...,x_n,y_n,z_n)$$
$$\hat{H}=-\Sigma_{i=1}^n \frac{\hbar^2}{2m_i}\nabla_i^2+V(x_1，y_1,z_1,...,x_n,y_n,z_n)$$

### Postulate 3: Eigenvalues
In any measurement of the observable associated with an operator, the only values that will ever be observed are the eigenvalues特征值 of this operator算符, which satisfy the eigenvalue equation:

$$\hat{A}\psi_n=a_n\psi_n$$

本征值$a_n$，本征函数$\psi_n$

本征值架起了算符和可观测物理量的桥梁

### Postulate 4: average value of the observable B
If a system is in a state described by a normalized wave function $\psi$, then the average value of the observable B is given by:
$$< B >=\int \psi^* \hat{B} \psi d\tau, d\tau=dx_xdy_1dz_1...dx_ndy_ndz_n$$




