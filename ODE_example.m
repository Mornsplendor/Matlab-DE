x0=[0;0;0];
[t,y]=ode45('Rossler',[0,100],x0);
plot(t,y)
