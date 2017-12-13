%========================================
%=           Connor Watson              =
%=   Math 388 - Intro to Chaos Theory   =
%=     Plotting Rossler Attractor       =
%========================================
x = zeros(1,2000); x2 = zeros(1,2000);
y = zeros(1,2000); y2 = zeros(1,2000);
z = zeros(1,2000); z2 = zeros(1,2000);
t0 = 1;
while t0 < 2001
    x(t0) = x(t0)+0.01; x2(t0) = x2(t0)+0.01;
    y(t0) = y(t0)+0.01; y2(t0) = y2(t0)+0.01;
    z(t0) = z(t0)+0.01; z2(t0) = z2(t0)+0.01;
    t0 = t0 + 1;
end
a = 0.2; a2 = 0.1;
b = 0.2; b2 = 0.1;
c = 5.7; c2 = 14;
n = 2;
dn = 0.01;
while n < 2001
    dx = (y(n-1)*-1 - z(n-1))*dn;
    dy = (x(n-1)+a*y(n-1))*dn;
    dz = (b+ z(n-1)*x(n-1) - z(n-1)*c)*dn;
    dx2 = (y2(n-1)*-1 - z2(n-1))*dn;
    dy2 = (x2(n-1)+a2*y2(n-1))*dn;
    dz2 = (b2+ z2(n-1)*x2(n-1) - z2(n-1)*c2)*dn;
    x(n) = x(n-1) + dx;
    y(n) = y(n-1) + dy;
    z(n) = z(n-1) + dz;
    x2(n) = x2(n-1) + dx2;
    y2(n) = y2(n-1) + dy2;
    z2(n) = z2(n-1) + dz2;
    n = n + 1;
end
figure
plot3(x,y,z,'red',x2,y2,z2,'blue')    