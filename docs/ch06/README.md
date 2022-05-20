# 机械工程领域常见物理量的测量

## 应变与应力的测量

常用的力测量方法是采用电狙应变仪测定构件表面的应变,再根据应变、应力以及力之间的关系,确定构件的受力状态

- 电阻仪分类

  根据被测应变的性质和工作频率不同

  - 静态电阻应变仪

    适用于测量静态的应变和变化十分缓慢的应变

  - 静动态电阻应变仪

    适用于测量静态应变和 0〜200 Hz 的低频动态应变

  - 动态电阻应变仪

    适用于测量 0〜2000 Hz 的动态应变

  - 超动态电阻应变仪

    指工作频率高于 10 kHZ 的电阻应变仪,主要用于测量爆炸、冲击等变化非常剧烈的瞬间过程

- 电阻仪测量电路

  多采用等臂电桥

- 假设

  电阻应变片的灵敏度$K_g$相同

- 推导

  根据:

  $$e_o = \frac {1} {4} ( \frac {\Delta R_1} {R_0} - \frac {\Delta R_2} {R_0} + \frac {\Delta R_3} {R_0} - \frac {\Delta R_4} {R_0} ) e_i$$

  与

  $$\frac {\Delta R} {R} = K_g \varepsilon$$

  得到:

  $$e_o = \frac {1} {4} K_g( \varepsilon_1 - \varepsilon_2 + \varepsilon_3 - \varepsilon_4 )e_i$$

  如何进行应变片布置和电桥的连接具有重要的指导作用

- 电阻应变片在构件上的布置和电桥的连接形式

  - 构件的受力情况

  - 其他的因素

    如何消除温度的影响

    在复合受力的情况下,如何消除附加载荷

    如何提高灵敏度

### 单向应力侧量

- 分析

  形变方式

  定性分析形变量(布置方式) -> 确定电桥公式

  电桥公式 -> 形变量

  材料力学 -> 应变量

- 拉伸(或压缩)

  ![][6]

  - 图 a

    $R_1$测量应变片的拉伸

    $R_2$测量另一个构件(测量温度的影响)

    半桥双臂邻接方式

    $$
    \begin{aligned}
    e _ { o } &= \frac { 1 } { 4 } ( \frac { \Delta R _ { 1 } + \Delta R _ { T } } { R _ { 0 } } - \frac { \Delta R _ { T } } { R _ { 0 } } ) e _ { i }  \\
    &= \frac { 1 } { 4 } K _ { g } \varepsilon e_i
    \end{aligned}
    $$

  - 图 b

    也可以温度补偿

    半桥邻接方式

    $$
    e _ { o } = \frac { 1 } { 4 } K _ { g } ( 1 +
    \nu ) \varepsilon e _ { i }
    $$

  - 公式

    $$\sigma = E \varepsilon$$

  也可以采用半桥双臂对接方式(但是有温度影响)

- 弯曲

  ![][7]

  - 图 b

    半桥双臂邻接方式

    $$e _ { o } = \frac { 1 } { 2 } K _ { g } \varepsilon e _ { i } $$

  - 图 d

    $$e _ { o } = K _ { g } \varepsilon e _ { i } $$

  - 公式

    $$M = W E \varepsilon$$

- 扭转

  ![][10]

  - 图 a

    半桥双臂邻接

    $$e _ { o } = \frac { 1 } { 2 } K _ { g  } \varepsilon e _ { i }$$

    由$\varepsilon_1 = - \varepsilon_2 = \varepsilon$ 和广义胡克定律

    $$
    \begin{cases}
    \varepsilon _ { 1 } = \frac { 1 } { E } ( \sigma _ { 1 } - \nu \sigma _ { 2 } ) \\
    \varepsilon _ { 2 } = \frac { 1 } { E } ( \sigma _ { 2 } - \nu \sigma _ { 1 } )
    \end{cases}
    $$

    $$| \sigma _ { 1 } | = | \sigma _ { 2 } | = \frac { E \varepsilon } { 1 + \nu }$$

  - 公式

    $$T = \frac { W _ { p } E \varepsilon } { 1 + \nu }$$

- 组合作用

  当构件同时受到拉伸和弯曲的作用时,可以利用不同的布片和电桥连接形式,达到只测量一种载荷作用而消除另一种载荷的作用

  ![][15]

  - 只测量弯矩

    半桥双臂邻接方式

  - 只测量拉伸

    半桥双臂对接方式

  ![][16]

  ![][17]

### 平面应力测量

[6]: assets/hqb.png
[7]: assets/nmy.png
[10]: assets/ixo.png
[15]: assets/ilu.png
[16]: assets/mry.png
[17]: assets/bqx.png
