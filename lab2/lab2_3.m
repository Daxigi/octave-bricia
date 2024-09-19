%coeficientes
a = 1;
b = 1e8; % 10^8

% caso 1: c = 1
c1 = 1;

% discriminante
discriminante1 = b^2 - 4*a*c1;

% vemos si el discriminante es positivo
if discriminante1 >= 0
    % incognitas
    x1_1 = (-b + sqrt(discriminante1)) / (2*a);
    x2_1 = (-b - sqrt(discriminante1)) / (2*a);
    fprintf('Soluciones para c = 1: x1 = %.5e, x2 = %.5e\n', x1_1, x2_1);
else
    fprintf('No hay soluciones reales para c = 1.\n');
end

% caso 2: c = 10^8
c2 = 1e8;

% discriminante
discriminante2 = b^2 - 4*a*c2;

% vemos si el discriminante es positivo
if discriminante2 >= 0
    % incognitas
    x1_2 = (-b + sqrt(discriminante2)) / (2*a);
    x2_2 = (-b - sqrt(discriminante2)) / (2*a);
    fprintf('Soluciones para c = 10^8: x1 = %.6e, x2 = %.6e\n', x1_2, x2_2);
else
    fprintf('No hay soluciones reales para c = 10^8.\n');
end

% c:1 la medida tenía errores debido a la complejidad del cálculo del discriminante y su pequeña magnitud
% c : 10^8 los cálculos son bastante consistentes, mostrando que cuando c es grande se ajusta a las expectativas