clc;
%Definindo Parametros
syms x y f;
%Funcao:
f=-1.2*y+7*exp(-0.3*x);     
%Intervalo de x [a,b]:
a=0;
b=2.5;
%Estimativa Inicial:
y0=3;
%Numero de Pontos:
n=6;

%[xEulerEx,yEulerIm]=metodoEulerExplicito(f,y0,a,b,n);
%disp(xEulerEx);disp(yEulerIm);
%[xHeun,yHeun]=metodoHeun(f,y0,a,b,n);
%disp(xHeun);disp(yHeun);
[xPontoM,yPontoM]=metodoPontoCentral(f,y0,a,b,n);
disp(xPontoM);disp(yPontoM);