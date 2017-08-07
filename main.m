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

syms s
analitica = (70/9)*exp(-0.3*s) - (43/9)*exp(-1.2*s); 

[xEulerEx, yEulerEx, erro] = metodoEulerExplicito(f, y0, a, b, n, analitica);
fprintf('Metodo de Euler Explicito(x/y/erro):\n');
disp(xEulerEx);
disp(yEulerEx);
disp(erro);
erro_medio = mean(erro);
fprintf('Erro médio utilizando este método: %f\n\n', erro_medio);

[xEulerIm, yEulerIm, erro] = metodoEulerImplicito(f, y0, a, b, n, analitica);
fprintf('Metodo de Euler Implicito(x/y/erro):\n');
disp(xEulerIm);
disp(yEulerIm);
disp(erro);
erro_medio = mean(erro);
fprintf('Erro médio utilizando este método: %f\n\n', erro_medio);

[xHeun, yHeun, erro] = metodoHeun(f, y0, a, b, n, analitica);
fprintf('Metodo de Heun(x/y/erro):\n');
disp(xHeun);
disp(yHeun);
disp(erro);
erro_medio = mean(erro);
fprintf('Erro médio utilizando este método: %f\n\n', erro_medio);

[xPontoM, yPontoM, erro] = metodoPontoCentral(f, y0, a, b, n, analitica);
fprintf('Metodo de Ponto Central(x/y/erro):\n');
disp(xPontoM);
disp(yPontoM);
disp(erro);
erro_medio = mean(erro);
fprintf('Erro médio utilizando este método: %f\n\n', erro_medio);
