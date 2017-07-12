%eq:Funcao.
%y0:Estimativa Inicial.
%[a,b]:Intervalo de x.
%n:Numero de Pontos.

function [xi,yi] = metodoHeun(eq,y0,a,b,n)
	%Preparando parametros
	h = (b - a)/(n-1);
    syms x y f;
    f=eq;
	xi(1) = a;
	yi(1) = y0;
    
	%Metodo
	for i = 1: n-1
	    f1=subs(f,[x,y],[xi(i),yi(i)]);
        f2=subs(f,[x,y],[xi(i)+h,yi(i)+f1*h]);
        yi(i+1) = yi(i)+(h/2)*(f1+f2);
	    xi(i+1) = xi(i)+h;
    end
end