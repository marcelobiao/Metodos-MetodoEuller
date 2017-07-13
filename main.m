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

[xEulerEx,yEulerEx]=metodoEulerExplicito(f,y0,a,b,n);
fprintf('Metodo de Euler Explicito(x/y):\n')
disp(xEulerEx);disp(yEulerEx);
[xEulerIm,yEulerIm]=metodoEulerImplicito(f,y0,a,b,n);
fprintf('Metodo de Euler Implicito(x/y):\n')
disp(xEulerIm);disp(yEulerIm);
[xHeun,yHeun]=metodoHeun(f,y0,a,b,n);
fprintf('Metodo de Heun(x/y):\n')
disp(xHeun);disp(yHeun);
[xPontoM,yPontoM]=metodoPontoCentral(f,y0,a,b,n);
fprintf('Metodo de Ponto Central(x/y):\n')
disp(xPontoM);disp(yPontoM);
