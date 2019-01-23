clear all;
clc;
randn('state',100);%randn��ǣ�ʹÿ�ε�������ж���ͬ 
x0=0.5;%��ʼ״̬
T=10;
N=25600;
dt=T/N;
dW=sqrt(dt)*randn(1,N);%��������
xe=zeros(1,N);
xtemp=x0;
for j=1:N
    Winc=sum(dW(1*(j-1)+1:1*j));
    xtemp=xtemp+dt*xtemp*(-4*xtemp^2-8*(1-xtemp)^2+4*xtemp)+0.2*Winc;
    xe(j)=xtemp;
end
plot([0:dt:T],[x0,xe],'*')