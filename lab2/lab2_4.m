% Datos de las mediciones
medida_1 = 1; % Medida en metros
error_1 = 0.001; % Error en metros

medida_2 = 300000; % Medida en metros (300 Km)
error_2 = 300; % Error en metros

% Cálculo del error relativo
error_relativo_1 = error_1 / medida_1;
error_relativo_2 = error_2 / medida_2;

% Mostrar los resultados
fprintf('Error relativo para 1 metro: %.4f (%.2f%%)\n', error_relativo_1, error_relativo_1 * 100);
fprintf('Error relativo para 300 Km: %.4f (%.2f%%)\n', error_relativo_2, error_relativo_2 * 100);

% Comparar errores relativos
if error_relativo_1 > error_relativo_2
    fprintf('El error relativo para 1 metro es mayor.\n');
elseif error_relativo_1 < error_relativo_2
    fprintf('El error relativo para 300 Km es mayor.\n');
else
    fprintf('Ambos errores relativos son iguales.\n');
end
