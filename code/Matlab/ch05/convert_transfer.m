%% 模拟滤波器设计
% 巴特沃斯滤波器
fc = 2000; % 截至频率:即将下降
fs = 4000; % 截至频率:下降为0,有一个过渡带
f = 10000; % 采样频率
wp = 2 * pi * fc; % 截至频率
ws = 2 * pi * fs; % 阻带起始频率
w = 2 * pi * f; % 采样频率
rp = 3; % 波纹大小dB
rs = 15; % 阻带衰减增益dB
n1 = 3; % 巴特沃斯滤波器阶数
wn1 = wp; % 巴特沃斯滤波器截至频率
[b1, a1] = butter(n1, wn1 / (w / 2), 's'); % 巴特沃斯滤波器
freqs(b1, a1) % 巴特沃斯滤波器频域函数
legend('fc = 2000Hz');
figure()
[n2, wn2] = buttord(wp / (w / 2), ws / (w / 2), rp, rs); % 巴特沃斯滤波器的设计参数求解
[b2, a2] = butter(n2, wn2 / (w / 2), 's'); % 巴特沃斯滤波器
freqs(b2, a2) % 巴特沃斯滤波器频域函数
grid;
fc = strcat('截至频率:', num2str(wn2 / (2 * pi) * (w / 2)), 'Hz');
legend(fc);

%% 幅值调制

N = 1000; % 采样点数
fs = 500; % 采样频率
n = (0:N - 1) / fs;
m = 0.5; % 幅值调制系数
x1 = sin(200 * pi * n); % 载波
x2 = cos(20 * pi * n); % 调制波
y = (1 + m * x2) .* x1; % 幅值调制
figure('color', [1 1 1]);
subplot(2, 1, 1); % 画出调制波
plot(n, x2, 'b');
axis([0, 1, -2, 2]);
xlabel('t');
ylabel('x(t)');
subplot(2, 1, 2); % 画出幅值调制
plot(n, y, 'r');
axis([0, 1, -2, 2]);
xlabel('t');
ylabel('x_m(t)');
