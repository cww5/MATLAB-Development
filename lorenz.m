%========================================
%=           Connor Watson              =
%=   Math 388 - Intro to Chaos Theory   =
%=     Plotting Lorenz Attractor        =
%========================================

x1 = zeros(1,2000);
y1 = zeros(1,2000);
z1 = zeros(1,2000);
q = 1;
while q < 2001
    x1(q) = x1(q) + 0.01;
    y1(q) = y1(q) + 0.01;
    z1(q) = z1(q) + 0.01;
    q = q + 1;
end
a = 10; b = 28; c = 8/3;
dt = 0.01;
t = 2;
while t < 2001
    dx = (a * (y1(t-1) - x1(t-1)))*dt;
    dy = (x1(t-1) * (b - z1(t-1)) - y1(t-1))*dt;
    dz = (x1(t-1) * y1(t-1) - c * z1(t-1))*dt;
    x1(t) = x1(t-1) + dx;
    y1(t) = y1(t-1) + dy;
    z1(t) = z1(t-1) + dz;

    t = t + 1;
end
figure
plot3(x1,y1,z1)
title('Graph of Lorenz Attractor')
xlabel('-20 < x < 30')
ylabel('-40 < y < 40')
zlabel('0 < x < 60')