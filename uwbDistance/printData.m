
clear;
close all;

load('distance_20160921.mat');

expMean = mean(expData, 2);
expErr  = abs(expIndex' - expMean);

fig1 = figure(1);
fig1s = subplot(1, 1, 1);
hold on;    grid on;

xlabel('real diatance (m)');
fig1s.XLim  = [0, expIndex(end) + 1];
fig1s.XTick = 0 : 2 : expIndex(end) + 0.5;

yyaxis right;
hbar = bar(expIndex, expErr);
hbar.BarWidth  = 0.5;
hbar.FaceColor = 0.8 * ones(1, 3);
hbar.EdgeColor = 'none';
ylabel('error (m)')
fig1s.YLim  = [0, 2];
fig1s.YTick = 0 : 0.25 : 2;
fig1s.YColor = 0.2 * ones(1, 3);
legend('error');

yyaxis left;
plot(fig1s, expIndex', expIndex', '--');
plot(fig1s, expIndex', expMean, '.-r');
ylabel('measurement distance (m)')
fig1s.YLim  = [-8, expIndex(end) + 2];
fig1s.YTick = -8 : 2 : expIndex(end) + 2;

legend('real', 'measure', 'error');




load('distance_20161128.mat');

expMean = mean(expData, 2);
expErr  = abs(expIndex' - expMean);

fig2 = figure(2);
fig2s = subplot(1, 1, 1);
hold on;    grid on;

xlabel('real diatance (m)');
fig2s.XLim  = [0, expIndex(end) + 1];
fig2s.XTick = 0 : 2 : expIndex(end) + 0.5;

yyaxis right;
hbar = bar(expIndex, expErr);
hbar.BarWidth  = 0.5;
hbar.FaceColor = 0.8 * ones(1, 3);
hbar.EdgeColor = 'none';
ylabel('error (m)')
fig2s.YLim  = [0, 2];
fig2s.YTick = 0 : 0.25 : 2;
fig2s.YColor = 0.2 * ones(1, 3);
legend('error');

yyaxis left;
plot(fig2s, expIndex', expIndex', '--');
plot(fig2s, expIndex', expMean, '.-r');
ylabel('measurement distance (m)')
fig2s.YLim  = [-8, expIndex(end) + 2];
fig2s.YTick = -8 : 2 : expIndex(end) + 2;

legend('real', 'measure', 'error');

% print(fig1, 'dist_0921', '-dpng', '-r1200'); 
% print(fig2, 'dist_1128', '-dpng', '-r1200'); 
