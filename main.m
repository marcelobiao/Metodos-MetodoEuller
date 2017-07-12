clc;
%Definindo Parametros
syms x y f;
%Funcao:
f=-y+x+2;     
%Intervalo de x [a,b]:
a=0;
b=0.5;
%Estimativa Inicial:
y0=2;
%Numero de Pontos:
n=6;

[xEulerEx,yEulerIm]=metodoEulerExplicito(f,y0,a,b,n);
%yHeun=metodoHeun(f,y0,a,b,n);
%yPonto=metodoPontoCentral(f,y0,a,b,n);
disp(xEulerEx);
disp(yEulerIm);
%disp(yHeun);
%disp(yPonto);