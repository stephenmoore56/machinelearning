x = [-100: 1: 100]; % a vector of input values
y = x.^2; % Note element-wise square
plot(x,y);
xlabel('x value');
ylabel('y value');
title('Plotting example');
grid on;
axis square;
% axis equal;