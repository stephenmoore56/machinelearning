A = magic(10);
v = zeros(10,1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end;
end;
disp(v);
A * x
A .* x
sum(A * x)
