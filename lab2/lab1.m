% Valores de pi y e redondeados a 6 decimales
pi_redondeado = 3.141593;
e_redondeado = 2.718282;

% Cálculo del cociente usando los valores redondeados
cociente_redondeado = pi_redondeado / e_redondeado;

% Valores exactos de pi y e en Octave
pi_exacto = pi;
e_exacto = exp(1);  % e es la base de los logaritmos naturales

% Cálculo del cociente exacto
cociente_exacto = pi_exacto / e_exacto;

% Mostrar resultados
fprintf('Cociente con valores redondeados: %.6f\n', cociente_redondeado);
fprintf('Cociente con valores exactos: %.15f\n', cociente_exacto);

% Comparación de dígitos decimales
fprintf('Diferencia entre el cociente redondeado y el exacto: %.15f\n', abs(cociente_redondeado - cociente_exacto));
