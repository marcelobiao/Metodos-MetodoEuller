%eq:Funcao.
%y0:Estimativa Inicial.
%[a,b]:Intervalo de x.
%n:Numero de Pontos.

function [xi,yi] = metodoEulerImplicito(eq,y0,a,b,n)
	%Preparando parametros
	h = (b - a)/(n-1);
    syms x y f;
    f=eq;
	xi(1) = a;
	yi(1) = y0;
    
	%Metodo
	%TODO: Metodo resulta em uma equacao nao-linear. 
    %TODO: Implementar Erro
end