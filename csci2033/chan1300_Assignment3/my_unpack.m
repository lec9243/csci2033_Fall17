function [M, t] = my_unpack(beta)
l = length(beta);
M = zeros(2,2);
for i = 1:2
    for j = 1:2
        M(i,j) = beta(2*(i-1)+j);
    end
end
t = zeros(2,1);
t(1,1)=beta(5,1);
t(2,1)=beta(6,1);
end
