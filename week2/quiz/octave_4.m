v = [1:7]';
w = [1:7]';
z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end;
z
sum(v .* w)
w' * v
% v * w
% w * v