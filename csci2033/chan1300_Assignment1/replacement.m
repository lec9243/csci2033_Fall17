function a = replacement(A,i,j,s)
rows = size(A,1);
if (i>rows) || (i<1) || (j<0) || (j>rows)
   disp('Error: input value is invalid.');
   disp('return the original matrix.');
else
A(i,:) = A(i,:) + s * A(j,:);
end
a = A;
end
