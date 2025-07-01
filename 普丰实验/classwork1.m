clear; 
clc; 
close all;

num_layers = 15;    
num_balls = 10000;   

final_positions = sum(rand(num_balls, num_layers) > 0.5, 2);

bin_edges = -0.5:1:num_layers+0.5;
histogram(final_positions, bin_edges, 'Normalization', 'probability');
title(sprintf('高尔顿板实验 (层数=%d, 小球数=%d)', num_layers, num_balls));
xlabel('小球最终位置）');
ylabel('频数');
grid on;

hold on;
x_theo = 0:num_layers;
prob_theo = binopdf(x_theo, num_layers, 0.5);
plot(x_theo, prob_theo, 'r--', 'LineWidth', 1.5);
legend('实验结果', '理论二项分布');
hold off;