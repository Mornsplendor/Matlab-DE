clear all;
clc;
randn('state',100);%randn标记，使每次的随机数列都相同 
x0=0.5;%初始状态
T=10;
N=25600;
dt=T/N;
dW=sqrt(dt)*randn(1,N);%布朗增量
xe=zeros(1,N);
xtemp=x0;
for j=1:N
    Winc=sum(dW(1*(j-1)+1:1*j));
    xtemp=xtemp+dt*xtemp*(-4*xtemp^2-8*(1-xtemp)^2+4*xtemp)+0.2*Winc;
    xe(j)=xtemp;
end
plot([0:dt:T],[x0,xe],'*')