%eq:Funcao.
%y0:Estimativa Inicial.
%[a,b]:Intervalo de x.
%n:Numero de Pontos.

function [xi,yi] = metodoEulerExplicito(eq,y0,a,b,n)
	%Preparando parametros
	h = (b - a)/(n-1);
    syms x y f;
    f=eq;
	xi(1) = a;
	yi(1) = y0;
    
	%Metodo
	for i = 1: n-1
	    yi(i+1) = yi(i) + h * subs(f,[x,y],[xi(i),yi(i)]);
	    xi(i+1) = xi(i) + h;
    end
    %TODO: Implementar Erro
end