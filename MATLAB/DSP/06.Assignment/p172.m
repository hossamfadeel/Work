% P0321a: plot x(n) for T_s = 0.01 sec,0.05 sec,0.1 sec
% x_a(t) = cos(20*pi*t);
clc; close all; set(0,'defaultfigurepaperposition',[0,0,6,4]);
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','P3.17-2');
T_s1 = 0.01; n1 = [0:100]; x1 = cos(20*pi*n1*T_s1);
subplot(3,1,1); Hs = stem(n1,x1,'filled'); axis([-5 105 -1.2 1.2]);
set(Hs,'markersize',2); xlabel('n');
title(['x(n) = cos(20{\pi}nT_s) for T_s = 0.01 sec']);
ylabel('x(n)');
T_s2 = 0.05; n2 = [0:20]; x2 = cos(20*pi*n2*T_s2);
subplot(3,1,2); Hs = stem(n2,x2,'filled'); set(Hs,'markersize',2);
set(gca,'XTick',[0:20]); axis([-2 22 -1.2 1.2]);
xlabel('n'); ylabel('x(n)');
title(['x(n) = cos(20{\pi}nT_s) for T_s = 0.05 sec']);
T_s3 = 0.1; n3 = [0:10]; x3 = cos(20*pi*n3*T_s3);
subplot(3,1,3); Hs = stem(n3,x3,'filled'); set(Hs,'markersize',2)
set(gca,'XTick',[0:10]); axis([-1 11 -1.2 1.2]);
xlabel('n'); ylabel('x(n)');
title(['x(n) = cos(20{\pi}nT_s) for T_s = 0.1 sec']);
