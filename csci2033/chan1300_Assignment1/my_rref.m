function r = my_rref(A)
[m,n] = size(A);
k = 1;
l = 1;
while (k <= m) && (l <= n)
   [q,p] = max(abs(A(k:m,l)));
   p = p+k-1;
   temp = A(p,:);
   A(p,:) = A(k,:);
   A(k,:) = temp;
   if (q < 10e-12)
       l = l+1;
   else
       a = A(k,l);
       A(k,:) = (1/a)*A(k,:);
       for i = 1:m
           if (i == k)
               A(i,:) = 1*A(i,:);
           else
           b = A(i,l);
           c = A(k,l);
           A(i,:) = A(i,:)-(b/c)*A(k,:);
           end
       end
       k = k+1;
       l = l+1;
   end
end
r=A;
end