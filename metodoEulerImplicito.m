%eq:Funcao.
%y0:Estimativa Inicial.
%[a,b]:Intervalo de x.
%n:Numero de Pontos.

function [xi,yi] = metodoEulerImplicito(eq,y0,a,b,n)
	%Preparando parametros
	h = (b - a)/(n-1);
    syms x y f;
    f=eq;
	%xi(1) = a;
	%yi(1) = y0;
    
    xi = [a zeros(1,n-1)];
    yi = [y0 zeros(1,n-1)];
    
	%Metodo
	%TODO: Metodo resulta em uma equacao nao-linear. 
    for i = 1: n-1
        ya = yi(i);
        yb = ya;
        for j = 1 : 9000
            yb = yi(i) + h * subs(f, [x,y], [xi(i), ya]);
            yt = abs(ya - yb);
            if (yt < 0.000001)
                break;
            else
                ya = yb;
            end
        end
        yi(i+1) = yb;
	    %yi(i+1) = yi(i) + h * subs(f,[x,y],[xi(i),yi(i)]);
	    xi(i+1) = xi(i) + h;
    end
    %TODO: Implementar Erro
end