%% 自相关函数的周期提取
% 从含有随机噪声的信号中提取周期成分

n = 5000; fs = 1000; N = 512; % n为信号长度, fs为信号采样频率, N为FFT点数
t = (0:n - 1) / fs; % 生成时间序列
f = (0:N / 2 - 1) * fs / N; % 生成频率序列
f0 = 5; % 周期频率
x = sin(2 * pi * f0 * t);
z = x + randn(size(x)); % 含有随机噪声和简谐信号的测试信号
[R, tau] = xcorr(z, 600, 'coeff'); % 计算自相关函数
subplot(2, 1, 1);
plot(t(1:1000), z(1:1000)); % 显示测试信号的前1000个点
xlabel('时间(s)'); ylabel('幅值'); title('测试信号');
subplot(2, 1, 2);
plot(tau, R); % 显示自相关函数
xlabel('滞后'); ylabel('自相关函数'); title('自相关函数');

%% 信号频谱
% 改变 n 来逼近

A = 1; T = 2; % A为信号幅值, T为信号周期
t = -T:0.01:T; % 生成时间序列
omega_0 = 2 * pi / T; % 基频
x = zeros(size(t)); % 生成空信号
n = 15; % 谐波的次数

for k = 1:2:n
    x = x + 4 * A * sin(k * omega_0 * t) / (k * pi); % 谐波叠加
end

plot(t, x, 'k'); % 显示信号
grid on; % 显示网格
hold on; % 保持当前图像
% 画方波信号
plot([-T, -T / 2, -T / 2, 0, 0, T / 2, T / 2, T], [1, 1, -1, -1, 1, 1, -1, -1], 'r');
xlabel('t'); ylabel('x(t)'); title('信号频谱');

%% 矩形窗函数的频谱

syms t w; % 定义t和m为符号变量
ut = heaviside(t + 0.5) - heaviside(t - 0.5); % 矩形窗函数
fw = fourier(ut); % 得到矩形窗函数的傅里叶谱clc
ezplot(fw, [-10 * pi, 10 * pi]); % 绘制矩形窗函数的傅里叶谱
axis([-10 * pi, 10 * pi, -0.3, 1]); % 设置坐标轴范围
grid; % 显示网格
xlabel('\omega'); ylabel('X(\omega)'); title('矩形窗函数的傅里叶谱');

figure; % 新建一个窗口
fw_amplitude = abs(fw); % 得到矩形窗函数的振幅
ezplot(fw_amplitude, [-10 * pi, 10 * pi]); % 绘制矩形窗函数的振幅
axis([-10 * pi, 10 * pi, 0, 1]); % 设置坐标轴范围
grid; % 显示网格
xlabel('\omega'); ylabel('X(\omega)'); title('矩形窗函数的振幅');

figure; % 新建一个窗口
fw_phase = angle(fw); % 得到矩形窗函数的相位
ezplot(fw_phase, [-10 * pi, 10 * pi]); % 绘制矩形窗函数的相位
axis([-10 * pi, 10 * pi, -pi, pi]); % 设置坐标轴范围
grid; % 显示网格
xlabel('\omega'); ylabel('X(\omega)'); title('矩形窗函数的相位');

%% 功率谱估计
% 估计一个含有随机噪声的信号的自功率谱

fs = 1000; % 信号采样频率
n = 1001; % 点数
t = (0:n - 1) / fs; % 时间序列
x_n = sin(2 * pi * 30 * t) + 3 * sin(2 * pi * 80 * t) + randn(size(t)); % 含有随机噪声的信号
[Pxx, w] = periodogram(x_n, rectwin(n), n, fs); % 自功率谱估计
figure('color', [1 1 1]); % 新建一个窗口
subplot(2, 1, 1); % 分割为2行1列的窗口
plot(t, x_n); % 显示信号
xlabel('t'); ylabel('x(t)'); title('信号');
subplot(2, 1, 2); % 分割为2行1列的窗口
plot(w, 10 * log10(Pxx)); % 显示功率谱
xlabel('频率/Hz'); ylabel('功率谱密度/(dB/Hz)'); title('功率谱');

%% 模拟信号采样
% 对信号进行采样, 并通过采样点恢复波形

t = -1:0.01:1; % 生成时间序列
x_t = cos(2 * pi * t) % 生成信号
plot(t, x_t); % 显示信号
hold on; % 保持当前图像
n = -5:5; % 生成采样点序列
fs = 5; % 采样频率
xx = cos(2 * pi * n / fs); % 采样值
stem(n/fs, xx, 'r--'); % 采样序列
plot(n/fs, xx, 'r--'); % 恢复被采样信号
xlabel('t'); ylabel('x(t)'); title('信号采样');
