---
title: markdown数学公式语法
tags: [markdown,语言]
date: 2020-12-30 19:30:24
updated: 2020-12-30 19:30:24
categories: markdown
---

记录了markdown中常用的数学公式的代码
<!-- more -->

# 行内与独行
行内公式：`$xyz$`  
独行公式：`$$xyz$$`

# 上下标
上标符号$x^4$: `$x^4$`  
下标符号$x_1$: `$x_1$`  
组合符号$O^{2+}_{2}$: `$O^{2+}_{2}$`

# 字型
下划线符号$\underline{x+y}$: `$\underline{x+y}$`  
上大括号$\overbrace{a+b+c+d}^{2.0}$: `$\overbrace{a+b+c+d}^{2.0}$`  
下大括号$a+\underbrace{b+c}_{1.0}+d$: `$a+\underbrace{b+c}_{1.0}+d$`   
上位符号$x\stackrel{\Delta}{=}x_1+x_2$: `$x\stackrel{\Delta}{=}x_1+x_2$`

# 占位符
两个quad空格$x\quad y$: `$x\qquad y$`  
quad空格$x\quad y$: `$x\quad y$`  


# 数学运算
加减运算$x\pm y$: `$x\pm y$`  
减加运算$x\mp y$: `$x\mp y$`  
乘法运算$x\times y$: `$x\times y$`  
点乘运算$x\cdot y$: `$x\cdot y$:`  
星乘运算$x\ast y$: `$x\ast y$`  
除法运算$x\div y$: `$x\div y$`  
分式表示$\frac{x+y}{y+z}$: `$\frac{x+y}{y+z}$`  
分式表示${x+y}\over{y+z}$: `${x+y}\over{y+z}$`  

# 高级运算
平均数运算$\overline{xyz}$: `$\overline{xyz}$`  
开二次方运算$\sqrt x$: `$\sqrt x$`  
开方运算$\sqrt[3]{x+y}$: `$\sqrt[3]{x+y}$`  
求和运算$\sum_{i=0}^n$: `$\sum_{i=0}^n$`  
积分运算$\int_a^b xdx$: `$\int_a^b xdx$`  
微分运算$\frac{\partial x}{\partial y}$: `$\frac{\partial x}{\partial y}$`  
矩阵表示$\left[\begin{matrix} 1&2&3 \\ 4&5&6 \\ 7&8&9 \end{matrix}\right]$: `$\left[\begin{matrix} 1&2&3 \\ 4&5&6 \\ 7&8&9 \end{matrix}\right]$`  

# 逻辑运算
大于等于$x\geq z$: `$x\geq z$`  
小于等于$x\leq z$: `$x\leq z$`  
不等于$x\neq z$: `$x\neq z$`  
不大于等于$x\ngeq z$: `$x\ngeq z$`  
不小于等于$x\nleq z$: `$x\nleq z$`  
约等于$x\approx z$: `$x\approx z$`  
恒定等于$x\equiv z$: `$x\equiv z$`  

# 集合运算
属于$x \in y$: `$x \in y$`  
不属于$x \notin y$: `$x \notin y$`  
子集$x \subset y$: `$x \subset y$`  
真子集$x \subseteq y$: `$x \subseteq y$`  
非真子集$x \subsetneq y$: `$x \subsetneq y$`  
非子集$x \not\subset y$: `$x \not\subset y$`  
并集$x \cup y$: `$x \cup y$`  
交集$x \cap y$: `$x \cap y$`  
差集$x \setminus y$: `$x \setminus y$`  
同或$x \bigodot y$: `$x \bigodot y$`  
同与$x \bigotimes y$: `$x \bigotimes y$`  
实数集合$\mathbb{R}$: `$\mathbb{R}$`  
自然数集合$\mathbb{Z}$: `\mathbb{Z}`  
空集$\emptyset$: `$\emptyset$`  

# 数学符号
无穷，符号：\infty，如：$\infty$  
虚数，符号：\imath，如：$\imath$  
虚数，符号：\jmath，如：$\jmath$  
数学符号，符号\hat{a}，如：$\hat{a}$  
数学符号，符号\check{a}，如：$\check{a}$  
数学符号，符号\breve{a}，如：$\breve{a}$  
数学符号，符号\tilde{a}，如：$\tilde{a}$  
数学符号，符号\bar{a}，如：$\bar{a}$  
矢量符号，符号\vec{a}，如：$\vec{a}$  
数学符号，符号\acute{a}，如：$\acute{a}$  
数学符号，符号\grave{a}，如：$\grave{a}$  
数学符号，符号\mathring{a}，如：$\mathring{a}$  
一阶导数符号，符号\dot{a}，如：$\dot{a}$  
二阶导数符号，符号\ddot{a}，如：$\ddot{a}$  
上箭头，符号：\uparrow，如：$\uparrow$  
上箭头，符号：\Uparrow，如：$\Uparrow$  
下箭头，符号：\downarrow，如：$\downarrow$  
下箭头，符号：\Downarrow，如：$\Downarrow$  
左箭头，符号：\leftarrow，如：$\leftarrow$  
左箭头，符号：\Leftarrow，如：$\Leftarrow$  
右箭头，符号：\rightarrow，如：$\rightarrow$  
右箭头，符号：\Rightarrow，如：$\Rightarrow$  
底端对齐的省略号，符号：\ldots，如：$1,2,\ldots,n$  
中线对齐的省略号，符号：\cdots，如：$x_1^2 + x_2^2 + \cdots + x_n^2$  
竖直对齐的省略号，符号：\vdots，如：$\vdots$  
斜对齐的省略号，符号：\ddots，如：$\ddots$  

# 希腊字母
| |             | |          | 
|-|     ---     |-|    ---   |
|A|`A`          |α|	`\alhpa`
|B|	`B`         |β|	`\beta`
|Γ|	`\Gamma`    |γ|	`\gamma`
|Δ|	`\Delta`	|δ|	`\delta`
|E|	`E`	        |ϵ|	`\epsilon`
|Z|	`Z`	        |ζ|	`\zeta`
|H|	`H`	        |η|	`\eta`
|Θ|	`\Theta`	|θ|	`\theta`
|I|	`I`	        |ι|	`\iota`
|K|	`K`	        |κ|	`\kappa`
|Λ|	`\Lambda`	|λ|	`\lambda`
|M|	`M`	        |μ|	`\mu`
|N|	`N`	        |ν|	`\nu`
|Ξ|	`\Xi`	    |ξ|	`\xi`
|O|	`O`	        |ο|	`\omicron`
|Π|	`\Pi`	    |π|	`\pi`
|P|	`P`	        |ρ|	`\rho`
|Σ|	`\Sigma`	|σ|	`\sigma`
|T|	`T`	        |τ|	`\tau`
|Υ|	`\Upsilon`	|υ|	`\upsilon`
|Φ|	`\Phi`	    |ϕ|	`\phi`
|X|	`X`	        |χ|	`\chi`
|Ψ|	`\Psi`  	|ψ|	`\psi`
|Ω|	`\v`	    |ω|	`\omega`

