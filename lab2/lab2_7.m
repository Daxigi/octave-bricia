% Inicialización
N = 10000;

% Suma de la serie desde i = 1 hasta N
suma_directa = 0;
for i = 1:N
    suma_directa = suma_directa + 1 / (i^2);
end
fprintf('Suma directa (de i=1 a N=10000): %.15f\n', suma_directa);

% Suma de la serie desde N hasta i = 1
suma_inversa = 0;
for i = N:-1:1
    suma_inversa = suma_inversa + 1 / (i^2);
end
fprintf('Suma inversa (de N=10000 a i=1): %.15f\n', suma_inversa);

% Valor teórico de la convergencia de la serie
valor_teorico = (pi^2) / 6;
fprintf('Valor teórico de la serie: %.15f\n', valor_teorico);

% Diferencia entre la suma directa y el valor teórico
diferencia_directa = abs(suma_directa - valor_teorico);
fprintf('Diferencia suma directa - valor teórico: %.15f\n', diferencia_directa);

% Diferencia entre la suma inversa y el valor teórico
diferencia_inversa = abs(suma_inversa - valor_teorico);
fprintf('Diferencia suma inversa - valor teórico: %.15f\n', diferencia_inversa);
