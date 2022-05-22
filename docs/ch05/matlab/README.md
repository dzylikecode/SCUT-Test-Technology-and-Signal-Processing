# Matlab 在信号调理和转换中的应用

- [code preview](https://github.com/dzylikecode/SCUT_3_Test-Technology-and-Signal-Processing/blob/master/code/Matlab/ch05/convert_transfer.m)
- <a href="/code/Matlab/ch05/convert_transfer.m">code download</a>

## 模拟滤波器设计

- [buttord](https://ww2.mathworks.cn/help/signal/ref/buttord.html)

  例子很好

  注意归一化, 利用采样频率去归一化

  Wp : 是准备下降, 此时会有 Rp 误差

  Ws : 是已经下降完毕, 此时以下将 Rs dB

  也就是有一个过渡带

### issue

- [Error using buttord (line 78) The cutoff frequencies must be within the interval of (0,1)](https://ww2.mathworks.cn/matlabcentral/answers/272316-how-to-butterworth-filter-with-bandpass-10-500-with-sampling-rate-1000)

## 幅值调制
