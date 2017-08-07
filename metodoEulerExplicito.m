%eq:Funcao.
%y0:Estimativa Inicial.
%[a,b]:Intervalo de x.
%n:Numero de Pontos.

function [xi, yi, erro] = metodoEulerExplicito(eq, y0, a, b, n, analitica)
	%Preparando parametros
	h = (b - a)/(n-1);
    syms x y f s;
    f=eq;
	xi(1) = a;
	yi(1) = y0;
    
	%Metodo
	for i = 1: n-1
	    yi(i+1) = yi(i) + h * subs(f,[x,y],[xi(i),yi(i)]);
	    xi(i+1) = xi(i) + h;
    end
    
    erro = zeros(1, length(xi));
    for j = 1: length(xi)
        ca_erro = subs(analitica, xi(j));
        erro(j) = ca_erro - yi(j);
    end
    
end