M = zeros(15,8);
for i = 1:15
  M(i,1:end-1) = randperm(7);
  M(i,end) = M(i,1);
endfor
disp(M);
