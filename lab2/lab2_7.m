n = 10000;

% serie desde i = 1 hasta n
suma_directa = 0;
for i = 1:n
    suma_directa = suma_directa + 1 / (i^2);
end
fprintf('Suma directa (de i=1 a n=10000): %.15f\n', suma_directa);

% serie desde n hasta i = 1
suma_inversa = 0;
for i = n:-1:1
    suma_inversa = suma_inversa + 1 / (i^2);
end
fprintf('Suma inversa (de n=10000 a i=1): %.15f\n', suma_inversa);

% valor teórico 
valor_teorico = (pi^2) / 6;
fprintf('Valor teórico de la serie: %.15f\n', valor_teorico);

% comparación entre suma directa y valor teórico
diferencia_directa = abs(suma_directa - valor_teorico);
fprintf('Diferencia suma directa - valor teórico: %.15f\n', diferencia_directa);

% comprración entre suma inversa y el valor teórico
diferencia_inversa = abs(suma_inversa - valor_teorico);
fprintf('Diferencia suma inversa - valor teórico: %.15f\n', diferencia_inversa);

% resultados cercanos al valor teórico, la pequeña diferencia es resultado de errores de precisión 
% debido a la representación finita de números en la computadora