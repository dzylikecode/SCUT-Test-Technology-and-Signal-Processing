%% 传递函数的 matlab 显示

num = [4]; % 分子
den = [1, 0.8, 1]; % 分母
sys = tf(num, den); % 系统函数
printsys(num, den, 's'); % 打印系统函数

%% 利用传递函数求系统响应

t = 0:0.01:12; % 时间
zeta = [0.2, 0.7, 1]; % 阻尼系数
wn = 1; % 无阻尼固有频率
num = wn^2; % 分子

for k = 1:length(zeta)
    den = [1, 2 * zeta(k) * wn, wn^2]; % 分母
    sys = tf(num, den); % 系统函数
    y_step(:, k) = step(sys, t); % 求阶跃响应
    y_impulse(:, k) = impulse(sys, t); % 求脉冲响应
end

subplot(2, 1, 1);

for k = 1:length(zeta)
    plot(t, y_step(:, k));
    hold on;
end

legend('\zeta = 0.2', '\zeta = 0.7', '\zeta = 1');
title('阶跃响应');
xlabel('t');
ylabel('y(t)');
subplot(2, 1, 2);

for k = 1:length(zeta)
    plot(t, y_impulse(:, k));
    hold on;
end

legend('\zeta = 0.2', '\zeta = 0.7', '\zeta = 1');
title('脉冲响应');
xlabel('t');
ylabel('y(t)');

%% 系统响应

t = 0:pi / 100:6 * pi; % 时间
num = [2]; % 分子
den = [1, 0.8, 1]; % 分母
ft = sin(t); % 输入信号
plot(t, ft, 'r--'); % 绘制输入信号
hold on;
plot(t, lsim(num, den, ft, t), 'b'); % 绘制系统响应
title('系统响应');
xlabel('t');
ylabel('y(t)');
legend('输入信号f(t)', '系统响应y(t)');

%% 频率特性

num = [1]; % 分子
den = [0.5, 1]; % 分母
[h, w] = freqs(num, den, 300); % 频率特性
M = abs(h); % 幅值比
A = angle(h); % 相位差
subplot(2, 1, 1);
plot(w, M); % 绘制幅值比
title('幅值比');
xlabel('\omega');
ylabel('A(\omega)');
grid;
subplot(2, 1, 2);
plot(w, A * 180 / pi); % 绘制相位差
title('相位差');
xlabel('\omega');
ylabel('\phi(\omega)');
grid;

%% 伯德图

w = [0, logspace(-2, 2, 400)]; % 频率
wn = 1; % 无阻尼固有频率
zeta = [0.2, 0.7, 1]; % 阻尼系数

for k = 1:length(zeta)
    num = wn^2; % 分子
    den = [1, 2 * zeta(k) * wn, wn^2]; % 分母
    sys = tf(num, den); % 系统函数
    bode(sys, w); % 伯德图
    hold on;
end

legend('\zeta = 0.2', '\zeta = 0.7', '\zeta = 1');