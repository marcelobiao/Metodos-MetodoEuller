%eq:Funcao.
%y0:Estimativa Inicial.
%[a,b]:Intervalo de x.
%n:Numero de Pontos.

function [xi, yi, erro] = metodoEulerImplicito(eq, y0, a, b, n, analitica)
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
        xi(i+1) = xi(i) + h;
        ya = yi(i);
        yb = ya;
        for j = 1 : 9000
            yb = yi(i) + h * subs(f, [x,y], [xi(i + 1), ya]);
            yt = abs(ya - yb);
            if (yt < 0.00001)
                break;
            else
                ya = yb;
            end
            
        end
        
        if (j == 9000)
            fprintf('Metodo nao convergiu, resultado deve ser desconsiderado\n');
        end
        yi(i+1) = yb;
	    %yi(i+1) = yi(i) + h * subs(f,[x,y],[xi(i),yi(i)]);
	    
    end
    
    erro = zeros(1, length(xi));
    for j = 1: length(xi)
        ca_erro = subs(analitica, xi(j));
        erro(j) = ca_erro - yi(j);
    end
end