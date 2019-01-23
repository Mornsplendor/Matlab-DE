function dx=Rossler(t,x)
dx=[-x(2)-x(3);x(1)+0.2*x(2);0.2-5.7*x(3)+x(1)*x(3)]