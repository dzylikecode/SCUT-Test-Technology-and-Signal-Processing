# 测试系统的基本特性

## 概述

- 测试系统的任务

  感受被测输人并将其转换为可以理解或可以量化的输出形式

- 测试系统的静态特性与动态特性
- 测试系统的标定

  标定是为了获得测试系统的特性,校验是对测试系统原有的特性参数值进行检验和校准

## 测试系统的静态特性和静态标定

### 侧试系统的静态特性

- 重复性

  重复性是指等精度测量所得结果之间的符合程度。重复性是衡量测量仪器随机误差大小的指标

- 灵敏度

  $$K = \frac { \Delta y } { \Delta x }$$

- 线性度

  $$线性度= \frac { B } { A } \times 100 \%$$

  - 常用某种拟合直线近似地表示输人和输出的关系,该拟合直线称为测试系统的工作直线。校准曲线偏离工作直线的程度称为测试系统的线性度

  - 拟合直线的方法

    - 端值法

      量程上、下极限点的连线

    - 最小二乘法

- 分辨率

  测量到的最小输入变化量

- 迟滞与回程误差

  在输人量由小增大和由大减小的测试过程中,对应于同一输入量所得到的输出量往往存在差值,这种现象称为迟滞

  差值称为迟滞误差

  用回程误差描述迟滞程度

  $$
  回程误差= \frac { H } { A } \times 100 \%\\
  H : 全量程范围内的最大迟滞误差 \\
  A : 测量装置满量程输出
  $$

- 稳定度和漂移

  - 稳定度是指测试系统在规定条件下保持其测量特性恒定不变的能力
  - 漂移通常是由测量装置内部温度变化和元件的不稳定性引起的

### 侧试系统的静态标定

- 静态标定就是将已知的输人作用于测试系统,得出测试系统的输入和输出的关系或静态特性曲线

- 过程

  正、反行程作为一个循环。重复多个循环,记录下测试系统相应的输出值

## 测试系统的动态特性

- 对象

  - 理想的测试系统

    线性定常系统

### 线性时不变系统的性质

- 叠加特性

  $$x _ { 1 } ( t ) \pm x _ { 2 } ( t ) \rightarrow y _ { 1 } ( t ) \pm y _ { 2 } ( t )$$

- 比例特性

  $$a x ( t ) \rightarrow a y ( t )$$

- 微分特性

  $$\frac { d x ( t ) } { d t } \rightarrow \frac { d y ( t ) } { d t }$$

- 积分特性

  $$\int _ { 0 } ^ { t } x ( t ) d t \rightarrow \int _ { 0 } ^ { t } y ( t ) d t$$

- 频率保持性

  $$
  \begin {aligned}
  若:x ( t ) &= X _ { 0 } \cos ( \omega t + \varphi _ { 1 } )\\
  则:y ( t ) &= Y _ { 0 } \cos ( \omega t + \varphi _ { 2 } )
  \end {aligned}
  $$

### 测试系统动态特性的描述方法

- 线性系统的数学模型

  - 常系数线性微分方程

    $$
    \begin{aligned}
    &a _ { n } \frac { d ^ { n } y ( t ) } { d t ^ { n } } + a _ { n - 1 } \frac { d ^ { n - 1 } y ( t ) } { d t ^ { n - 1 } } + \cdots + a _ { 1 } \frac { d y ( t ) } { d t } + a _ { 0 } y ( t )  \\
    = &b _ { m } \frac { d ^ { m } x ( t ) } { d t ^ { m } } + b _ { m - 1 } \frac { d ^ { m - 1 } x ( t ) } { d t ^ { m - 1 } } + \cdots + b _ { 1 } \frac { d y ( t ) } { d t } + b _ { 0 } x ( t )
    \end {aligned}
    $$

- 传递函数

  - 表征了一个系统的传递特性
  - 一般的测量装置总是稳定的

    $$n \gt m$$

- 频率特性函数

  - 定义

    系统的频率特性是指系统在简谐信号激励下,其稳态输出对输人的幅值比和相位差随激励频率 $\omega$ 变化的特性

  - 求法

    - 传递函数求
    - 通过试验求

      $$\frac { Y _ { i } } { X _ { i } } = A _ { i } 和 \varphi_i$$

  - 传递函数与频率响应函数的区别

    - 当输入为简谐信号,采用拉氏变换解得的系统输出将由两部分组成:由激励引起的、反映系统固有特性的瞬态输出及该激励所对应的稳态输出
    - 由频率特性函数可知,系统的输出是在到达稳态时才进行观察

    用频率特性函数不能反映过渡过程, 其仅仅是对简谐输入信号的稳态输出的反映,必须用传递函数才能反映系统响应的全过程

- 脉冲响应函数

  脉冲响应函数和传递闲数是一对拉氏变换对,脉冲响应函数和频率特性函数又是一对傅氏变换对

- 环节的串联并联

  - 如果它们之间没有能量交换

  - 串联

    $$
    \begin{aligned}
    A ( \omega ) &= \prod _ { i = 1 } ^ { n } A _ { i } ( \omega )\\
    \varphi ( w ) &= \sum _ { i = 1 } ^ { n } \varphi _ { i } ( w )
    \end {aligned}
    $$

  - 并联

  任何分母中 s 高于三次($n \geq 3$)的高阶系统都可以看成若干个一阶环节和二阶环节的串联和并联

### 一阶系统的动态特性

- 数学描述

  $$a _ { 1 } \frac { d y ( t ) } { d t } + a _ { 0 } y ( t ) = b _ { 0 } x ( t )$$

- 传递函数

  $$
  H ( s ) = \frac { Y ( s ) } { X ( s ) } = \frac { 1 } { \tau s + 1 }\\
  \tau = \frac {a_1} {a_0} : 时间常数\\
  K = \frac {b_0} {a_0} : 静态灵敏度, 约定为K = 1
  $$

- 频率特性函数

  - 测试系统的幅值衰减量 $\delta(\omega)$

    $$\delta ( \omega ) = - 20 \lg A ( \omega ) d B$$

  - 截止频率$\omega_c$

    $$
    \delta ( \omega_c ) = -3 dB\\
    即:A ( \omega_c )=\frac {\sqrt 2} {2}
    $$

  - 一阶系统:$\omega_c = \frac {1} {\tau}$

  - 特点

    - 一阶系统是一个低通环节
    - 时间常数 $\tau$ 决定了一阶系统的工作频率范围

      时间常数 $\tau$ 越小,则 $\omega_c$越大,即测试装置的工作频率范围越宽

      $\tau$ 越大,则 $\omega_c$越小,系统工作频率范围越窄

- 稳态误差

  $$| A ( \omega ) - 1 |$$

  一阶系统 $A(\omega)$ 不超越 1

- 脉冲响应函数

  $$h ( t ) = \frac { 1 } { \tau } e ^ { - \frac {t} {\tau} }$$

  一般认为时间 $4\tau$ 后,衰减到零

  $\tau$越小,系统的输出越接近$\delta(t)$

- 单位阶跃响应

  $$y _ { u } ( t ) = 1 - e ^ { - t / \tau }$$

  将到达最终值的 95% 或 98%所需要的时间 $3\tau$ 或 $4\tau$ 定义为系统的调整时间,以此作为评价测试系统响应快慢的指标。

### 二阶系统的动态特性

- 数学描述

  $$a _ { 2 } \frac { d ^ { 2 } y ( t ) } { d t ^ { 2 } } + a _ { 1 } \frac { d y ( t ) } { d t } + a _ { 0 } y ( t ) = b _ { 0 } x ( t )$$

- 传递函数

  $$
  \begin {aligned}
  &H ( s ) = \frac { \omega _ { n } ^ { 2 } } { s ^ { 2 } + 2 \omega _ { n } \zeta s + \omega _ { n } ^ { 2 } }\\
  &K = \frac {b_0} {a_0} : 静态灵敏度, 约定为K = 1\\
  &\omega _ { n } = \sqrt {\frac {a_0} {a_2}} : 无阻尼固有频率\\
  &\zeta = \frac {a_1} {2 \sqrt{a_0 a_2}} : 阻尼比
  \end {aligned}
  $$

- 频率特性函数

  $$
  \begin {aligned}
  H ( \omega ) &= \frac { 1 } { 1 - ( \frac { \omega } { \omega _ { n } } ) ^ { 2 } + 2 j \zeta \frac { \omega } { \omega _ { n } } }\\
  A ( \omega ) &= \frac { 1 } { \sqrt { [ 1 - ( \frac { \omega } { \omega _ { n } } ) ^ { 2 } ] ^ { 2 } + ( 2 \zeta \frac { \omega } { a _ { n } } ) ^ { 2 } } }\\
  \varphi ( \omega ) &= - \arctan \frac { 2 \zeta \frac { \omega } { \omega _ { n } } } { 1 - ( \frac { \omega } { \omega _ { n } } ) ^ { 2 } }
  \end {aligned}
  $$

  - 当输人信号的频率 $\omega$ 满足 $\omega / \omega_n \ll 1$

    $$A(\omega) \approx 1, \varphi (\omega) \approx 0$$

    测试系统固有频率$\omega_n$越大,在一定误差范围可以测量的输人信号的频率范围就越宽,即测试系统工作频率范围就越宽

  - 当输入信号的频率 $\omega$ 满足 $\omega / \omega_n \gg 1$时

    $$A(\omega) \approx 0, \varphi (\omega) \approx -180^{\circ}$$

    将产生较大的测量误差

  - 当输人信号的频率 $\omega$ 满足 $\omega / \omega_n = 1$时

    $$A(\omega) = \frac {1}{2\zeta}, \varphi (\omega) = -90^{\circ}$$

    幅频特性曲线出现了一个很大的峰值,即系统出现了谐振

  对二阶测试系统推荐采用 $\zeta$ 值在 0.7 左右,工作频率范围为$(0, 0.4 \omega_n)$

- 二阶系统的脉冲响应函数

  - 欠阻尼

    $$h ( t ) = \frac { \omega _ { n } } { \sqrt { 1 - \zeta ^ { 2 } } } e ^ { - \zeta \omega _ { n } t } \sin ( \sqrt { 1 - \zeta ^ { 2 } } \omega _ { n } t )$$

- 单位阶跃响应

  $$
  \begin {cases}
  y _ { u } ( t ) = 1 - \frac { e ^ { - \zeta \omega_n t } } { \sqrt { 1 - \zeta ^ { 2 } } } \sin ( \sqrt { 1 - \zeta ^ { 2 } } \omega_n t + \arctan \frac { \sqrt { 1 - \zeta ^ { 2 } } } { \zeta } ), &\quad \text { 当 } \zeta < 1 \\
  y _ { u } ( t ) = 1 - (1 + \omega_n t)e ^ { - \zeta \omega_n t }, &\quad \text { 当 } \zeta = 1 \\
  y _ { u } ( t ) = 1 - \frac { \zeta + \sqrt { \zeta ^ { 2 } - 1 } } { 2 \sqrt { \zeta ^ { 2 } - 1 } } e ^ { - ( \zeta - \sqrt { \zeta ^ { 2 } - 1 } ) \omega_n t} + \frac { \zeta - \sqrt { \zeta ^ { 2 } - 1 } } { 2 \sqrt { \zeta ^ { 2 } - 1 } } e ^ { - ( \zeta + \sqrt { \zeta ^ { 2 } -1}) \omega_n t }, &\quad \text { 当 } \zeta > 1
  \end {cases}
  $$

### 测试系统对任意输入的响应

$$y ( t ) = x ( t ) \ast h ( t )$$

### 测试系统的动态标定

动态标定是测试系统可靠性和准确度保证的前提

- 一阶系统

  测得时间常数 $\tau$

- 二阶系统

  测得阻尼比$\zeta$和无阻尼固有频率 $\omega_n$

- 频率响应法

  - 一阶系统时间常数 $\tau$ 的确定

    利用试验获得的 $A(\omega)$值

  - 二阶系统阻尼比和固有角频率的确定

    利用谐振频率

    $$\omega _ { r } = \omega _ { n } \sqrt { ( 1 - 2 \zeta ^ { 2 } ) }$$

    $$\frac { A ( \omega _ { r } ) } { A ( 0 ) } = \frac { 1 } { 2 \zeta \sqrt { ( 1 - \zeta ^ { 2 } ) } }$$

- 阶跃响应法

  - 一阶系统时间常数 $\tau$ 的确定

    - 取输出值达到稳态值的 63%所经过的时间即为时间常数 $\tau$ 但是,如此求取的时间常数 $\tau$ 值,因未涉及阶跃响应的全过程

  - 作图求斜率

    $$\ln [ 1 - y _ { u } ( t ) ] = - \frac { t } { \tau }$$

  - 二阶系统阻尼比和固有角频率的确定

    - 测量:有阻尼固有角频率 $\omega_d$

      $$\omega _ { n } = \frac { \omega _ { d } } { \sqrt { 1 - \zeta ^ { 2 } } }$$

    - 测量: 超调量

      $$\zeta = \sqrt { \frac { 1 } { ( \frac { \pi } { \ln M_1 } ) ^ { 2 } + 1 } }$$

## 测试系统不失真传递信号的条件

测试实际上是应用测量装置或系统来重现被测信号

根据测试技术的要求,经测试系统传递后的信号,只要能够准确地、有效地反映被测信号的运动与变化状态并保留原信号的特征和全部有用信息,则测试系统对信号的传递属于不失真传递

- 测试系统不失真传递信号的时域条件

  $$y ( t ) = A _ { 0 } x ( t - t _ { 0 } )$$

- 测试系统不失真传递信号的频域条件

  $$H ( \omega ) = \frac { Y ( \omega ) } { X ( \omega ) } = A _ { 0 } e ^ { - j \omega t _ { 0 } }$$

在实际测试时,首先根据测试精度的要求,选择适当的测试系统,使被测信号的频带宽度处于测试装置的工作频率范围内,并使测试系统的幅频和相频特性尽可能接近不失真传递的条件;其次,对输入信号做必要的前置处理,及时滤去信号内的噪声,尤其要防止某些频率位于测量装置共振区的噪声输入测试系统