function a = interchange(A,i,j)
rows = size(A,1);
if (i>rows) || (i<1) || (j<0) || (j>rows)
   disp('Error: input value is invalid.');
   disp('return the original matrix.');
else
temp = A(i,:);
A(i,:) = A(j,:);
A(j,:) = temp;
end
a = A;
end