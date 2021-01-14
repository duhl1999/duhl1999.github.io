---
title: 量子化学_mooc_NJU
tags: [量子化学,笔记,理论]
date: 2020-12-30 13:38:33
update: 2021-01-14 10:37:11
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

## Section 2: Commutator and Hermitian Operator

### commute对易：

two operators act sequentially on a function: $\hat{A}\hat{B}f(x)=\hat{A}[\hat{B}f(x)]=\hat{A}h(x)$

For an arbitrary function f(x), if $\hat{A}\hat{B}f(x)=\hat{B}\hat{A}f(x)$, the two operators commute对易

The commmutator: $[\hat{A},\hat{B}]\stackrel{\Delta}{==}\hat{A}\hat{B}-\hat{B}\hat{A}$
$$[\hat{A},\hat{B}]=0\Rightarrow \hat{A}\quad and \quad \hat{B}\quad commutes$$

Heisenberg unncertainty principle: $\sigma_p \sigma_x \geq \hbar/2$ 原因就是动量算符和位置算符不对易
> for a 1D system, the momentum operator is $\hat{p}_x=-i\hbar\frac{d}{dx}$  
> and the position operator is $\hat{x}=x$  
> For an arbitrary function $f(x)$:  $[\hat{p_x},\hat{x}]f(x)=\hat{p_x}\hat{x}f(x)-\hat{x}\hat{p_x}f(x)\neq 0$  
> $[\hat{p_x},\hat{x}]=-i\hbar I$ (单位算符I)

If two operators commute, there corresponding observable quantities have simultaneously well-defined values

If two operators do not commute, there corresponding observable quantities do not have simultaneously well-defined values, and in fact:
$$\sigma_A^2\sigma_B^2\geq-\frac{1}{4}(\int\Psi^*[\hat{A},\hat{B}]\Psi d\tau)^2$$
其中：$\sigma_A^2=\int\Psi^*(\hat{A}-< \hat{A} >)^2\Psi d\tau$, $\sigma_B^2=\int\Psi^*(\hat{B}-< \hat{B} >)^2\Psi d\tau$

### Hermitian 厄米：
An operator is sain to be linear线性 if: 
$$\hat{A}[c_1f_1(x)+c_2f_2(x)]=c_1\hat{A}c_1f_1(x)+c_2\hat{A}f_2(x)$$
例如：求导数、积分算符就是线性的

Dirac notation for functions and  interger狄拉克符号：方便表示波函数
> $| n >$: $\psi_n(x)$  
> $< n |$: $\psi_n^*(x)$  
> $< m|n >$: $< m||n >$: $\int \psi_m^*(x)\psi_n(x)dx$  
$< m|A|n >$: $\int \psi_m^*(x)\hat{A}\psi_n(x)dx$

An operator is said to be Hermitian if: 
$$\int f^*(x)\hat{A}g(x)dx=\int g(x)\hat{A}f^*(x)dx=[\int g^*(x)\hat{A}f(x)dx]^*$$

In Dirac notation, 
$$< f|\hat{A}|g > = < g|\hat{A}|f >^*$$

Another definition:
$$< f|\hat{A}|f > = < f|\hat{A}|f >^*$$
$< f|\hat{A}|f >$表示算符对应物理量的平均值，复共轭与原值相等说明平均值是实数，等价于厄米

#### The definition of Hermitian operator:
$$< f|\hat{A}|g > = < g|\hat{A}|f >^*$$
$$< f|\hat{A}|f > = < f|\hat{A}|f >^*$$

#### The properties of a Hermitian operator:
1. The eigenvalues of a hermitian operator are real 厄米算符的本征值是实数
2. The eigenvecors of a hermitian operator are orthogonal 厄米算符的特征向量是正交的


### Gram-Schmidt orthonormalization procedure正交化方法
Any linear combination of degenerate eigenvectors is also an eigenfunction with the same eigenvalue 将简并本征函数线性组合后可以得到相同本质值的本征函数

两个不正交的矢量$| 1 >$和$| 2 >$  
令$| I > = |1>  \quad  | II' > = | 1 > + C | 2 >$  
因为$< I|II' > =0$  
解得$C=-1/S$ (S为1和2的内积)  
归一化得
$$| II > = \frac{1}{\sqrt{S^{-2}-1}}(|1>-S^{-1}|2 >)$$

### 证明算符是厄米的
Prove that the kinetic energy operator is Hermitian:
$$\hat{T}=-\frac{\hbar}{2m}\frac{d^2}{dx^2}$$
只需证明:
$$< f|\hat{T}|f > = < f|\hat{T}|f >^*$$



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



## Section 3：Eigenfunctions of Commutative Operators

For a state function状态函数 $\psi$ is simultaneously an eigenfunction本征函数 of the two commuting operators $\hat{A}$ and $\hat{B}$ with eigenvalues本征值 $a_i$ and $b_i$ respectively, then a measurement测量 of $A$ will yield the result $a_i$, and a measurement of $B$ yield $b_i$

**Theorem:** For a set of hermitian operators $\hat{A},\hat{B},\hat{C},...$, there exists存在 a common complete set of eigenfunctions共同点完备本征函数集, if and only if every operator commutes对易 with each other.

## Section 4: Orthonormal Basis

**Thorem:** The eigenfunctions本征函数 of a hermitian operator that represents a physically observable property可观测属性 from a complete orthonormal set完备正交集.

In general, suppose: $\hat{B}f_i=b_if_i,i=1,2,...$  
Thus, $\{f_i,1=1,2,...\}$ is a complete orthonormal set完备正交集: $\int f_i^*f_j d\tau = \delta_{ij}$  
Since an arbitrary任意 function can be expanded as a linear combination线性组合 of a complete set of functions, we have: $\psi=\sum\limits_i c_i f_i$

To obtain the coefficients in the expansion, we multiply左乘 both sides by $f_m^*(x)$ and integrate, then we find:
$$\int_{-\infty}^{\infty}f_m^*(x)\psi(x)dx=\Sigma_{n=1}^\infty c_n \int_{-\infty}^{\infty}f_m^*(x)f_n(x)dx=\Sigma_{n=1}^\infty c_n\delta_{mn}=c_m$$
$$c_n=\int_{-\infty}^{\infty}f_n^*(x)\psi(x)dx=< f_n|\psi >$$

The coefficients系数 $c_n$ in the expansion are called **Fourier coefficients**

In the status function $\psi(x)$, which is not an eigenfunction of $\hat{B}$, from **Postulate3**, we can calculate the average value of the property $B$. In a series of measurements:
$$ < B > = \int \psi^* \hat{B} \psi d\tau $$
$$\qquad\qquad\qquad\qquad= \sum\limits_i \sum\limits_j c_i^* c_j \int f_i^* \hat{B} f_j d\tau $$
$$\qquad\qquad\qquad\qquad=\sum\limits_i \sum\limits_j c_i^* c_j b_j \int f_i^* f_j d\tau $$
$$\qquad\qquad\quad=\sum\limits_i \sum\limits_j c_i^* c_j b_j \delta_{ij} $$
$$\qquad\quad=\sum\limits_i |c_i|^2 b_i $$

If the system is not in a state described by an eigenfunction of $\hat{B}$, we will get one of the eigenvalues of $\hat{B}$ when we measure $B$, but we cannot predict which eigenvalue will be obtained. Instead, the probabilities概率 for obtaining various eigenvalues of $\hat{B}$ can be predicted.


## Section 5: Time-Dependent Schrodinger Equation

### Postulate 5: 
The wave function of a system evolves in time according the time dependent Schrodinger Equation
$$ i\hbar\frac{\partial \Psi}{\partial t} = \hat{H}\Psi$$

For the one-part 1D case, the Hamiltonian operator is:
$$\hat{H}=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}+V(x)$$
Let $\Psi(x,t)=f(t)\psi(x)$,Then:
$$\frac{\partial \Psi(x,t)}{\partial t}=\frac{df(t)}{dt}\psi(x) \qquad \frac{\partial^2 \Psi(x,t)}{\partial x^2}=f(t)\frac{d^2\psi(x)}{dx^2}$$
Substituting these expressions into the time-dependent Schrodinger equation leads to:
$$-\frac{\hbar}{i}\frac{df(t)}{dt}\psi(x)=-\frac{\hbar}{2m}f(t)\frac{d^2\psi(x)}{dx^2}+V(x)f(t)\psi(x)$$
Dividing both sides of this equation by $f(t)\psi(x)$:
$$-\frac{\hbar}{i}\frac{1}{f(t)}\frac{df(t)}{dt}=-\frac{\hbar^2}{2m}\frac{1}{\psi(x)}\frac{d^2\psi(x)}{dx^2}+V(x)$$
Therefore,
$$E=-\frac{\hbar}{i}\frac{1}{f(t)}\frac{df(t)}{dt} \qquad E=-\frac{\hbar^2}{2m}\frac{1}{\psi(x)}\frac{d^2\psi(x)}{dx^2}+V(x)$$

from which:
$$\frac{df(t)}{dt}=-\frac{iE}{\hbar}dt \Rightarrow lnf(t)=-\frac{iE}{\hbar}+C \Rightarrow f(t)=Ae^{-iEt/\hbar} \qquad (1)$$
$$-\frac{\hbar^2}{2m}\frac{d^2\psi(x)}{dx^2}+V(x)\psi(x)=E\psi(x) \qquad (2)$$

The above equation can be expressed as:
$$ \hat{H}\psi(x)=E\psi(x) \qquad \hat{H}=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}+V(x) $$
This is the **Time-Dependent Schrodinger Equation** for a one-particle moving in 1D system

The time-dependent wave function is then:
$$\Psi(x,t)=e^{-iEt/\hbar}\psi(x)$$
If the system happents to be one of the eigenstates of he Hamiltonian, then:
$$\Psi_n(x,t)=e^{-iE_n t/\hbar}\psi_n(x)$$

概率分布：
$$\Psi_n^*(x,t)\Psi_n(x,t)dt=\psi_n^*(x,t)\psi_n(x,t)dt $$
与时间无关

Thus, the probability density and the average values of any observables are independent of time, and $\psi_n(x)$ is called stationary-state wave functions.

**Stationary-state are of central importance in chemisty!**

The general solution to time-dependent Schrodinger equation is:
$$\Psi(x,t)=\sum\limits_n C_n \psi_n(x) e^{-iE_nt/\hbar}$$


