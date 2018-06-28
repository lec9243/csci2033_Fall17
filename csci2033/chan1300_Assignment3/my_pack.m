function beta = my_pack(M, t)
[m,n] = size(M);
l = length(t);
a = m*n+l;
temp = zeros(a,1);
for i = 1:m
    for j = 1:n
        index = (m*(i-1))+j;
        temp(index,1) = M(i,j);
    end
end
index = m*n;
for i = 1:2
    temp(index+i,1) = t(i,1);
end
beta = temp;
end
        