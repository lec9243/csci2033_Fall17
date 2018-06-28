function p = gps2d(a, b, c, ra, rb, rc)
temp = [ 2*(a(1)-b(1)),2*(a(2)-b(2)),(-b(1)*b(1)-b(2)*b(2)+a(1)*a(1)+a(2)*a(2)+rb*rb-ra*ra);
         2*(b(1)-c(1)),2*(b(2)-c(2)),(-c(1)*c(1)-c(2)*c(2)+b(1)*b(1)+b(2)*b(2)+rc*rc-rb*rb);];
A = rref(temp);
p = A(:,3);

end