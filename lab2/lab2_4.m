% medidas en metros 
medida_1 = 1; 
error_1 = 0.001; 

medida_2 = 300000; 
error_2 = 300;

% error relativo
error_relativo_1 = error_1 / medida_1;
error_relativo_2 = error_2 / medida_2;

fprintf('Error relativo para 1 metro: %.15f (%.2f%%)\n', error_relativo_1, error_relativo_1 * 100);
fprintf('Error relativo para 300 Km: %.15f (%.2f%%)\n', error_relativo_2, error_relativo_2 * 100);

if error_relativo_1 > error_relativo_2
    fprintf('El error relativo para 1 metro es mayor.\n');
elseif error_relativo_1 < error_relativo_2
    fprintf('El error relativo para 300 Km es mayor.\n');
else
    fprintf('Ambos errores relativos son iguales.\n');
end

% aunque EA absoluto en la medida de 300km es mucho mayor que 1m, el error representa la misma proporción del valor total