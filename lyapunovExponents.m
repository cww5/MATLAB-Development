%========================================
%=           Connor Watson              =
%= Math 388 - Intro to Chaos Theory     =
%= Finding/Plotting Lyapunov Exponents  =
%=      Computer Experiment 3.1         =
%========================================

%These arrays are setup for the scatter plot later
A = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
L = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
i = 1;
for a = 2.0:0.05:4.0
    syms q
    %Get fixed points
    fixPts = solve(a*q*(1-q) == q,q);
    fp = fixPts(2);
    %Get Lyapunov Exponents
    lyapExp = log(abs(vpa(subs(diff(a*x*(1-x)),x,fp))));
    %Re-assign values into original matrices
    A(i) = a;
    L(i) = lyapExp;
    i = i + 1;
end
scatter(A,L,'X')
line(A,L)


