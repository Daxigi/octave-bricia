pkg load symbolic

r = 3; 
v = 30;

% f es una función que depende de h
f = @(h) pi * h.^2 .* (3*r - h) / 3 - v; 

%% gráficamente
figure;
fplot(f, [-5, r]);
title('Función f(h) = \pi h^2 (3r - h)/3 - v');
xlabel('Profundidad h (m)');
ylabel('f(h)');
grid on;

%% tanteo
disp('Método de Tanteo (Búsqueda Incremental):');
incremento = input('Introduce el valor del incremento: ');

h_min = -5;
h_max = r; 

% para comparar si hay cambio de signo y para la siguiente iteración
h_anterior = h_min;
f_anterior = f(h_anterior);

fprintf('Valores de f(h) y análisis de cambio de signo:\n');
fprintf('-----------------------------------------\n');

for h = (h_min + incremento):incremento:h_max
    f_actual = f(h);
    fprintf('f(%.2f) = %.4f\n', h, f_actual);
    
    if f_anterior * f_actual < 0
        fprintf('Se ha detectado un cambio de signo entre %.2f y %.2f\n', h_anterior, h);
        fprintf('La raíz se encuentra en el intervalo [%.2f, %.2f]\n', h_anterior, h);
    end
    
    h_anterior = h;
    f_anterior = f_actual;
end

%% biseccion
disp('Método de Intervalo Medio (Bisección):');

a_min = -5;  
a_max = r;    
error = 0.001;
raices = [];

for a = a_min:incremento:a_max-incremento
    b = a + incremento; % intervalo actual
    
    if f(a) * f(b) < 0
        disp(['Se ha detectado un cambio de signo en el intervalo [', num2str(a), ', ', num2str(b), ']']);
        
        while (b - a) / 2 > error
            c = (a + b) / 2;
            if f(c) == 0
                raices(end+1) = c;
                break; 
            elseif f(a) * f(c) < 0
                b = c; 
            else
                a = c;
            end
        end
        
        h_aprox = (a + b) / 2;
        raices(end+1) = h_aprox;
        fprintf('La profundidad aproximada h usando el método de Intervalo Medio es: %.4f metros\n', h_aprox);
    end
end
