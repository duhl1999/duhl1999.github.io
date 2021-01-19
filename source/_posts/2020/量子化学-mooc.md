---
title: 量子化学_mooc_NJU
tags: [量子化学,笔记,理论]
date: 2020-12-30 13:38:33
update: 2021-01-19 22:48:40
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


# Chapter 3: Exact精确 Energy and Wave Functions for Simple Systems

## Section 1: A particle in 1D Box

The potential is 0 inside the 1D infinite potential box, and is infinite outside the box. 一维无限深势阱
$$V(x)=0,x \in [0,a]; \infty, else$$

Hamiltonian:
$$\hat{H}=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}+V(x)$$
Schrodinge equation:
$$\frac{d^2\psi}{dx^2}+\frac{2mE}{\hbar^2}\psi(x)=0 \quad x \in [0,a]$$

let $k=\frac{(2mE)^{1/2}}{\hbar}=\frac{2\pi (2mE)^{1/2}}{h}$

so, Schrodinge equation:
$$\frac{d^2\psi}{dx^2}+k^2 \psi(x)=0 \quad x \in [0,a]$$

The general solution is(with the Euler's formula):
$$\psi(x)=Acos \frac{(2mE)^{1/2}}{\hbar} x+Bsin \frac{(2mE)^{1/2}}{\hbar} x$$

The boundary conditions(Continuity): $\psi(0)=\psi(a)=0$

$$\psi(0)=A=0$$
$$\psi(a)=Bsin \frac{(2mE)^{1/2}}{\hbar} a=0$$

Therefore:
$$\frac{n\pi}{a}=\frac{2\pi (2mE)^{1/2}}{h}$$
$$E_n=\frac{h^2n^2}{8ma^2} \qquad n=1,2,3,...$$

The energies of the particle are said to be **quantized** and the interger $n$ is called a **quantum number**量子数

如果要求出$B$的值，可以根据波函数的归一化条件:
$$B=\sqrt{a/2}$$
$$\psi(x)=\sqrt{a/2} sin \frac{(2mE)^{1/2}}{\hbar} x$$


随着能级升高，粒子行为逐渐趋于经典粒子：**The correspondence principle**  
Quantum mechanical results and classical mechanical results tend to agree in the limit of large quantum numbers (classical limit).

## Section 2: Applications and Extensions扩展 of a Partcle in a Box

### explaining the sbsorption spectrum of lineat conjugated hydrocarbons
Absorption Spectrum of Conjugated Hydrocarbons直链共轭烯烃吸收光谱：  
the free-electron model is quite successful at explaining the sbsorption吸收 spectrum光谱 of lineat线性 conjugated hydrocarbons共轭烯烃

Butadiene丁二烯：$H_2C=CHCH=CH_2$  
Four π electrons move along a straight line whose length is the distance between the two H atom at both ends, L=555pm.

According to the Pauli Exclusion principle: The for π electrons fill the first two levels.

Upon radiation with UV light, the system will make a transition from the $n=2$ state to the $n=3$ state with the energy:
$$\Delta E= \frac{h^2}{8m_8a^2}(3^2-2^2)=9.78 \times 10^{-19}J$$
$$\tilde{\nu}=\frac{\Delta E}{hc}=4.92 \times 10^4 cm^{-1}$$
Butadiene has an absorption band at $4.61 \times 10^4 cm^{-1}$

###  The Average Momentum of a Particle in a Box is Zero
The everage value of the physucal quantity a (its quantum-mechanical operator is $\hat{A}$)
$$< a > = \int \psi_n^*(x) \hat{A} \psi(x)dx$$

Therefore, the average momentum of a particle in a box is:
$$< p >= \int_0^a [(\frac{2}{a})^{1/2}sin\frac{n\pi x}{a}](-i\hbar\frac{d}{dx})[(\frac{2}{a})^{1/2}sin\frac{n\pi x}{a}]dx=-i\hbar\frac{2\pi n}{a^2}\int_0^a sin\frac{n\pi x}{a}cos\frac{n\pi x}{a}dx=0$$
Thus, a particle in a box is equally likely to be moving in either direction.

### Verification of the Heisenberg Uncertainty Principle

$$< p^2 >= \int_0^a [(\frac{2}{a})^{1/2}sin\frac{n\pi x}{a}](-\hbar^2 \frac{d^2}{dx^2})[(\frac{2}{a})^{1/2}sin\frac{n\pi x}{a}]dx= \frac{n^2 \pi^2 \hbar^2}{a^2}$$

The variance方差 of the momentum of a particle in a box is:
$$\sigma_p^2 =< p^2 > - < p >^2= \frac{n^2 \pi^2 \hbar^2}{a^2}$$
$$\sigma_p=\frac{n\pi \hbar}{a}$$

$$< x > = \frac{2}{a}\int_0^a xsin^2\frac{n\pi x}{a}dx = \frac{a}{a} \qquad < x^2 > = \frac{2}{a}\int_0^a x^2 sin^2\frac{n\pi x}{a}dx = \frac{a}{a}$$

$$\sigma_x^2 =< x^2 > - < x >^2= (\frac{a}{2\pi n})^2(\frac{\pi^2 n^2}{3}-2)$$

$$\sigma_x \sigma_p=\frac{\hbar}{2}(\frac{\pi^2 n^2}{3}-2)^{1/2} > \frac{\hbar}{2}$$

### The Problem of a particle in a 3D Box is a Simple Extension of the 1D Case

Hamilltonian for a 3D box: 
$$\hat{H}=-\frac{\hbar^2}{2m}(\frac{\partial^2}{\partial x^2}+\frac{\partial^2}{\partial y^2}+\frac{\partial^2}{\partial z^2})+V(x,y,z)$$
Thus, the Schrodinger equation for the system:
$$-\frac{\hbar^2}{2m}(\frac{\partial^2}{\partial x^2}+\frac{\partial^2}{\partial y^2}+\frac{\partial^2}{\partial z^2})=E\psi(x,y,z) \qquad x \in [0,a];y \in [0,b];z \in [0,c]$$

The wave function satisfies the boundary conditions:
$$\psi(0,y,z)=\psi(a,y,z)=0$$
$$\psi(x,0,z)=\psi(x,b,z)=0$$
$$\psi(x,y,0)=\psi(x,y,c)=0$$

We use the method of sparation of variables变量分离 to solove the equation: 
$\psi(x,y,z)=X(x)Y(y)Z(z)$
$$\frac{1}{X(x)}\frac{\partial^2 X}{\partial x^2}+\frac{1}{Y(y)}\frac{\partial^2 Y}{\partial y^2}+\frac{1}{Z(z)}\frac{\partial^2 Z}{\partial z^2}+\frac{2m}{\hbar}E=0$$
It can be concerted into three equations:
$$\frac{1}{X(x)}\frac{\partial^2 X}{\partial x^2}=-\frac{2m}{\hbar}E_x$$
$$\frac{1}{Y(y)}\frac{\partial^2 Y}{\partial y^2}=-\frac{2m}{\hbar}E_y$$
$$\frac{1}{Z(z)}\frac{\partial^2 Z}{\partial z^2}=-\frac{2m}{\hbar}E_z$$
Where$E=E_x+E_y+E_z$

Same as 1D to solve the equation:
$$\psi_{n_x n_y n_z}=(\frac{8}{abc})^{1/2} sin\frac{n_x\pi x}{a} sin\frac{n_y\pi y}{b} sin\frac{n_z\pi z}{c} \qquad n_x,n_y,n_z=1,2,3,...$$
$$E_{n_x n_y n_z}=\frac{h^2}{8m}(\frac{n_x^2}{a^2}+\frac{n_y^2}{b^2}+\frac{n_z^2}{c^2})$$

For a particle in a cube $(a=b=c)$:
$$E_{n_x n_y n_z}=\frac{h^2}{8ma^2}(n_x^2+n_y^2+n_z^2)$$

量子数不同，但是能级相同——能级简并  
Degeneracy 简并度

### A Particle in a Box with Different Potential Energies in Three Different Regions 
$$V(x)=V_0,x \in [0,a]; 0, else$$

If $E>V_0$, the solution to the Schrodinger Equation:
$$\frac{d^2\psi}{dx^2}+\frac{2m}{\hbar}[E-V(x)]\psi(x)=0$$
let $k_1=\sqrt{\frac{2mE}{\hbar^2}} \qquad k_2=\sqrt{\frac{2m(E-V_0)}{\hbar^2}}$, in each region is:
$$\psi_1(x)=Ae^{ik_1x}+Be^{-ik_1x} \qquad x<0$$
$$\psi_2(x)=Ce^{ik_2x}+De^{-ik_2x} \qquad 0<x<a$$
$$\psi_3(x)=Ee^{ik_1x}+Fe^{-ik_1x} \qquad x>a$$

exclude the situation of the particle coming from large position values of x:
$$F=0$$

The boundary conditions:$\psi(x)$ and $d\psi / dx$ must be continuous at $x=0$ and $x=a$:
$$B=\frac{2i(k_1^2-k_2^2)sin(k_2a)}{(k_1-k_2)^2e^{ik_2a}-(k_1+k_2)^2e^{-ik_2a}}A$$
$$E=\frac{4k_1 k_2 e^{-ik_1a}}{(k_1+k_2)^2e^{-ik_2a}-(k_1-k_2)^2e^{ik_2a}}A$$

So we transmission coefficient, the probability the particle will get through the barrrier透射系数, is:
$$T=|\frac{E}{A}|^2=\frac{4k_1^2k_2^2}{(k_1-k_2)^2sin^2(k_2a)+4k_1^2k_2^2}$$

and the refrection coefficient反射系数, is:
$$R=|\frac{B}{A}|^2=\frac{(k_1-k_2)^2sin^2(k_2a)}{(k_1-k_2)^2sin^2(k_2a)+4k_1^2k_2^2}=1-T$$
**If the energy $E$ is greater than the barrier height, the particle will be reflected to some extent.**

If $E<V_0$
$$k_1=\sqrt{\frac{2mE}{\hbar^2}} \qquad k_2=\sqrt{\frac{2m(V_0-E)}{\hbar^2}}$$

$$T=|\frac{E}{A}|^2=\frac{4}{4+\frac{(k_1^2+k_2^2)^2}{k_1^2 k_2^2}sinh^2 k_2 a}$$
**If the energy $E$ is less than the barrier height, the particle will have a chance to get through the barrier.**

"隧穿效应"

## Section 3: Rigid Rotator and Rotational Spectroscopy of Diatomic Molecules双原子分子

For a diatomic molecule with two interacting actoms  
particle 1: $\vec{r_1}(x_1,y_1,z_1)$  
particle 2: $\vec{r_2}(x_2,y_2,z_2)$

the Hamiltonian for its nuclear motion核运动 can be disctibed as
$$\hat{H}=-\frac{\hbar^2}{2m_1}\nabla_1^2-\frac{\hbar^2}{2m_2}\nabla_2^2+V(x_1,y_1,z_1,x_2,y_2,z_2)$$

Assume the center of mass of this two-particle system is $\vec{R}$: $C(X,Y,Z)$
$$\vec{R}=\frac{m_1 \vec{r_1}+m_2 \vec{r_2}}{m_1 + m_2}$$

On the other hand, the ralative motion is described by $\vec{r}$: $(x,y,z)$
$$\vec{r}=\vec{r_2}-\vec{r_1}$$

so:
$$\vec{r_1}=\vec{R}-\frac{m_2}{m_1+m_2}\vec{r} \qquad \vec{r_2}=\vec{R}+\frac{m_1}{m_1+m_2}\vec{r}$$

This represents a transformation of coordinates from $x_1,y_1,z_1,x_2,y_2,z_2$ to {x,y,z,X,Y,Z}

The kinetic energy动能 of the two particles:
$$T=\frac{1}{2} m_1 |\dot{\vec{r_1}}|^2 + \frac{1}{2} m_2 |\dot{\vec{r_2}}|^2 = \frac{1}{2} m_1 (\dot{\vec{R}}-\frac{m_2}{m_1+m_2} \dot{\vec{r}}) \cdot (\dot{\vec{R}}-\frac{m_2}{m_1+m_2} \dot{\vec{r}}) + \frac{1}{2} m_2 (\dot{\vec{R}}+\frac{m_1}{m_1+m_2} \dot{\vec{r}}) \cdot (\dot{\vec{R}}+\frac{m_1}{m_1+m_2} \dot{\vec{r}})$$

注：$\dot{\vec{R}}=\frac{d\vec{r}}{dt}$

Let $C_1=\frac{-m_2}{m_1+m_2}$, $C_2=\frac{m_1}{m_1=m_2}$, then
$$T=\frac{1}{2}m_1[\dot{\vec{R}} \cdot \dot{\vec{R}} + \dot{\vec{R}} \cdot \dot{\vec{r}} \cdot C_1 + C_1 \cdot \dot{\vec{r}} \cdot \dot{\vec{R}} +\dot{\vec{r}} \cdot \dot{\vec{r}} \cdot C_1^2] + \frac{1}{2}m_2[\dot{\vec{R}} \cdot \dot{\vec{R}} + \dot{\vec{R}} \cdot \dot{\vec{r}} \cdot C_2 + C_2 \cdot \dot{\vec{r}} \cdot \dot{\vec{R}} +\dot{\vec{r}} \cdot \dot{\vec{r}} \cdot C_2^2]$$
$$=\frac{1}{2}(m_1 + m_2)|\dot{\vec{R}}|^2 + (m_1C_1+m_2C_2)\dot{\vec{R}} \cdot \dot{\vec{r}} + \frac{1}{2}(m_1 C_1^2 + m_2 C_2^2)|\dot{\vec{r}}|^2 $$

Let $M=m_1 + m_2$ be total mass, define the reduced mass $\mu = \frac{m_1 m_2}{m_1 +m_2}$ then,
$$T=\frac{1}{2}M |\dot{\vec{R}}|^2+\frac{1}{2} \mu |\dot{\vec{r}}|^2$$

$1/2M |\dot{\vec{R}}|^2$: the kinetic energy of translational motion平动动能 vibration  
$1/2 \mu |\dot{\vec{r}}|^2$: the kinetic energy of relative motion相对运动动能 rotation 

Hence, the total Hamiltonian is now reduced as
$$\hat{H}=\hat{H_{tr}}+\hat{H_{int}}$$
$$\hat{H_{tr}}=-\frac{\hbar^2}{2M}\nabla_R^2, \qquad \hat{H_{int}}=-\frac{\hbar^2}{2\mu}\nabla^2+V(x,y,z) $$

Thus, the total wave functions and energies have forms
$$\Psi(X,Y,Z,x,y,z)=\Lambda(X,Y,Z)\psi(x,y,z) \qquad E=E_{tr}+E_{vr}$$

### translational motion the mass center behaves like a free particle, $V=0$
$$[-\frac{\hbar^2}{2M}\nabla_R^2] \Lambda(X,Y,Z)= E_{tr} \Lambda(X,Y,Z)$$

$$\Lambda(X,Y,Z)=Ae^{i\vec{K}\cdot \vec{R}}$$
$$E_{tr}=\frac{K^2 \hbar^2}{2M} \geq 0$$
K取值不受限制，因此$E_{tr}$是连续的，不是量子化的

### the Schrodinger Equation for the Relative Motion
$$[-\frac{\hbar^2}{2\mu}\nabla^2+V(x,y,z)] \psi(x,y,z) = E_{vr} \psi(x,y,z)$$

The above equations also hold true for other two-partice system like a hydrogen atom:
$$M=m_e + m_p \qquad \mu=\frac{m_e m_p}{m_e + m_p}$$

In spherical coordinates,
$$\hat{H_{int}}=-\frac{\hbar^2}{2\mu}\nabla^2+V(x,y,z)=-\frac{\hbar}{2\mu}(\frac{\partial^2}{\partial r^2}+\frac{2}{r}\frac{\partial}{\partial r}-\frac{1}{r^2 \hbar^2}\hat{L}^2)+V(r)$$
$$\hat{L}^2=-\hbar^2 [\frac{1}{sin \theta} \frac{\partial}{\partial \theta}(sin \theta \frac{\partial}{\partial \theta})+\frac{1}{sin^2 \theta}\frac{\partial^2}{\partial \phi^2}]$$

For a two-particle rigid rotor(刚性转子), we mean: $|\vec{r}|=r_e(constant)$, $V(x,y,z)=V(r)=0$
$$-\frac{\hbar}{2\mu}(\frac{\partial^2}{\partial r^2}+\frac{2}{r}\frac{\partial}{\partial r})=0$$
Thus, the Hamiltonian operator fo the rotation is defind as
$$\hat{H_{rot}}=\frac{\hat{L}^2}{2 \mu r_e^2}=\frac{\hat{L}^2}{2I} \qquad I=\mu r_e^2$$
here $I$ is the moment of inertia(转动惯量)

***
角动量平方算符$\hat{L}^2$的本征方程：
$$\hat{L}^2 Y_J^m(\theta,\phi)=\hbar^2J(J+1) Y_J^m(\theta,\phi)$$
The eigenvalues本征值:
$$L^2=\hbar^2J(J+1)$$
$$J=0,1,2,... \qquad m=0, \pm1, \pm2,...,\pm J$$
***

### The Energy Levels of a Rigid Rotator刚性转子
The schridubger equation for a rigid rotator is:
$$\frac{\hat{L}^2}{2I}Y(\theta,\phi)=-\frac{\hbar^2}{2I} [\frac{1}{sin \theta} \frac{\partial}{\partial \theta}(sin \theta \frac{\partial}{\partial \theta})+\frac{1}{sin^2 \theta}\frac{\partial^2}{\partial \phi^2}]Y(\theta,\phi)=E_{rot}Y(\theta,\phi)$$

The spherical harmonics球谐函数 $Y_J^m(\theta,\phi)$ are the eigenfunctions, and the allowed rotational energies are easy to obtain:
$$\hat{H}_{rot}Y(\theta,\phi)=E_{rot}Y(\theta,\phi) \qquad J=0,1,2,... \quad m=0,\pm1,\pm2...,\pm J$$
$$E_{rot}=\frac{\hbar^2}{2I}J(J+1) \qquad J=0,1,2,...$$

we obtain a set of discrete energy levels离散能级 for the rotational energies转动能, and we can also notice:  
(1) $E_{rot}=0(J=0)$ means no zero-point rotational energy  
(2) Each energy level has a degeneracy $g_j=2J+1$ since for each value of $J$ there are $(2J+1)$ values of m($-J$ to $J$)

### Rotational Spectroscopy pf Diatomic Molecules
Electromagnetic radiation can cause a rigid rotator to undergo transitions from one state to another


**Selection rules** 跃迁选率：满足要求才能发生跃迁:  
(1) These transitions occur between adjacent states相邻状态, or $\Delta J=\pm 1$  
(2) The molecule must alse possess a permanent dipole moment分子拥有永久偶极矩

$$\Delta E=E_{J+1}-E_J=\frac{\hbar^2}{I}(J+1)$$
Since $\Delta E=h\nu$
$$\nu=\frac{h}{4\pi^2 I}(J+1) \qquad J=0,1,2,...$$

rotational constant of the molecule(转动常数Hz) $B=\frac{h}{8\pi^2 I}$:
$$\nu=2B(J+1) \qquad J=0,1,2,...$$

If the transition frequency is expressed in terms of wave numbers 跃迁频率用波数表示：
$$\tilde{\nu}=2\tilde{B}(J+1) \qquad J=0,1,2,... \qquad \tilde{B}=\frac{h}{8\pi^2 cI}$$

可以看出跃迁频率是等差数列，因此跃迁光谱是等间距谱线

## Section 4: Harmonic Oscillator 双原子分子振动薛定谔方程

$$\hat{H}_{int}=-\frac{\hbar^2}{2\mu}(\frac{\partial^2}{\partial r^2}+\frac{2}{r}\frac{\partial}{\partial r})+\frac{1}{2\mu r^2}\hat{L}^2+V(r)$$
$$\hat{H}_{int}\Psi(r,\theta,\phi)=E_{vr}\Psi(r,\theta,\phi)$$

Let $\Psi(r,\theta,\phi)=\psi(r)Y_J^m(\theta,\phi)$,   
With $\hat{L}^2Y_J^m(\theta,\phi)=J(J+1)\hbar^2 Y_J^m(\theta,\phi)$  
Let $f(r)=r\psi(r)$
$$\frac{\partial^2 \psi(r)}{\partial r^2}+\frac{2}{r}\frac{\partial \psi(r)}{\partial r}=\frac{1}{r} \frac{\partial^2 f(r)}{\partial r^2}$$

The equation can be simplified as:
$$-\frac{\hbar^2}{2\mu}\frac{d^2f(r)}{dr^2}+\frac{J(J+1) \hbar^2}{2\mu r^2}f(r)+V(r)f(r)=E_{vr}f(r)$$

Let $r=r_e+x$, $\chi(x)=f(r_e+x)=r\psi(r)$
$$-\frac{\hbar^2}{2\mu}\frac{d^2\chi(x)}{dx^2}+\frac{J(J+1) \hbar^2}{2\mu (x+r_e)^2}\chi(x)+V(x+r_e)\chi(x)=E_{vr}\chi(x)$$

When $x<<r_e$
$$\frac{J(J+1) \hbar^2}{2\mu (x+r_e)^2} \approx \frac{J(J+1) \hbar^2}{2\mu r_e^2}=\frac{J(J+1)\hbar^2}{2I}=E_{rot}$$
$$-\frac{\hbar^2}{2\mu}\frac{d^2\chi(x)}{dx^2}+V(x+r_e)\chi(x)=E_{vib}\chi(x) \qquad E_{vr}=E_{vib}+E_{rot}$$

简谐近似$V(x+r_e) \approx \frac{1}{2}kx^2$：
$$[-\frac{\hbar^2}{2\mu}\frac{d^2}{dx^2}+\frac{1}{2}kx^2]\chi(x)=E_{vib}\chi(x)$$

**It can be shown that the vibrational振动 Hamiltonian of a diatomic molecule obtained above is exactly the same as that of the harmonic oscillator简谐振子**

## Section 5: Infrared Spectrum of Diatomic Molecules  双原子分子红外光谱

### The energy levels of a Harmonic Oscillator
$$-\frac{\hbar^2}{2\mu}\frac{d^2\psi(x)}{dx^2}+V(x)\psi(x)=E \psi(x) \qquad V(x)=\frac{1}{2}kx^2$$
Transformed into the second-order differential equation:
$$\frac{d^2\psi}{dx^2}+\frac{2u}{\hbar^2}(E-\frac{1}{2}kx^2)\psi(x)=0 \qquad -\infty< x < +\infty$$

With **the power series method**幂级数法, solve the equation:
$$E_n=h\nu(n+\frac{1}{2}) \qquad n=0,1,2,... \quad \nu=\frac{1}{2\pi}(\frac{k}{\mu})^{1/2}$$

The groundd state energy (the state with $n=0$) is $E=\frac{1}{2}h\nu$, called **zero-point energy**

vibrational transitions振动 of diatomic molecules occur is the infrared region红外区域

Selection rules:  
(1) Transitions occur only between adjacent states. 相邻能级之间  
(2) The dipole moment of the molecule must change as the molecule vibrates.振动引起偶极矩改变

For ansorption to occur:
$$\Delta E=E_{n+1}-E_n=\hbar(\frac{k}{\nu})^{1/2}$$
Thus, the observed frequency of the radiation absorbed辐射频率 is:
$$\nu_{obs}=\frac{1}{2\pi}(\frac{k}{\mu})^{1/2}$$
$$\tilde{\omega}=\frac{1}{2\pi}(\frac{k}{\mu})^{1/2} \quad (cm^{-1})$$

### The Wave Function of the Harmonic Oscillator一维谐振子
$$\psi_n(x)=N_n H_n (\alpha^{1/2}x)e^{\alpha x^2/2} \qquad \alpha=(\frac{k\mu}{\hbar^2})^{1/2}$$
The normalization constant归一化系数 $N_n=\frac{1}{(2^n n!)^{1/2}}(\frac{\alpha}{\pi})^{1/4}$
Hermite polynomials厄米多项式: $H_n(\alpha^{1/2}x)$

### Rotational Transitions Accompany Vibrational Transitions
振动能级差大，转动能级差小。 相当于同一个振动态具有不同的转动态

within the rigid rotator-harmonic oscillator approximation刚性转子和简谐振子近似, the rotational and vibrational energy(Hz) of a diatomic molecule is given by
$$E_{n.J}=(n+\frac{1}{2})\nu+BJ(J+1) \qquad n=0,1,2,... \quad J=0,1,2,...$$
$$\tilde{E}_{n,J}=(n+\frac{1}{2})\tilde{\nu}+\tilde{B}J(J+1) \qquad \tilde{\nu}=\frac{1}{2\pi c}(\frac{k}{\mu})^{1/2} \quad \tilde{B}=\frac{h}{8\pi^2 cI}$$

跃迁时，可能发生：  
(1) 跃迁到更高振动态($\Delta n=+1$)的更高转动态($\Delta J=+1$)——光谱R支  
(2) 跃迁到更高振动态($\Delta n=+1$)的更低转动态($\Delta J=-1$)——光谱P支  

### The Vibrations of Polyatomic Molecules Are Represented by Normal Coordinates多原子分子振动光谱

|   |Linear线性分子|Nolinear非线性|
|---|---|---|
| **Translational** degree of freedom平动自由度 | 3 | 3 |
| **Rotational** degrees of freedom转动自由度 | 2 | 3 |
| **Vibrational** degrees of freedom振动自由度 | 3N-5 | 3N-6 |

The potential energy of molecule is a function of vibrational coordinates ($3N-5$ or $3N-6$)
$$\Delta V=V(x_1,x_2,...x_{N_{vib})}-V(0,0,...,0)=\frac{1}{2}\sum\limits_{j=1}^{N_{vib}}F_jQ_j^2$$
The new coordinates are called **normal coordinates or normal modes**简正坐标

Then the vibrational Hamiltonian operator is:
$$\hat{H_{vib}} = -\sum\limits_{j=1}^{N_{vib}} \frac{\hbar^2}{2 \mu_j} \frac{d^2}{d Q_j^2}+\frac{1}{2}\sum\limits_{j=1}^{N_{vib}} F_j Q_j^2$$

每一项对应一个简谐振子的哈密顿，振动波函数可以写成每个简谐振子波函数相乘
$$\psi_{vib}(Q_1,Q_2,...,Q_{vib})=\psi_{vib,1}(Q_1)\psi_{vib,2}(Q_2)...\psi_{vib,n}(Q_n)$$
$$E_{vib}=\sum\limits_{i=1}^{N_{vib}}hv_i(\nu_i+\frac{1}{2}) \qquad each \quad \nu_i=0,1,2,...$$


