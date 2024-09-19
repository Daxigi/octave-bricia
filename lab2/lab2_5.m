% área de una piscina rectangular
ancho_real = sqrt(2);
largo_real = sqrt(8);

area_real = ancho_real * largo_real;
fprintf('El área real de la piscina es: %.15f m^2\n', area_real);

% área de una piscina con los resultados de la calculadora, inherencia
ancho_aprox = 1.41;
largo_aprox = 2.83;

area_aprox = ancho_aprox * largo_aprox;
fprintf('El área aproximada de la piscina es: %.2f m^2\n', area_aprox);

% error relativo
error_relativo = abs(area_aprox - area_real) / area_real;
fprintf('El error relativo es: %.15f\n', error_relativo);

% el valor aproximado del área 3.99m2 no es el real debido a los errores de redondeo en las raíces
% la forma más exacta de calcular el área es utilizando los valores exactos de las raíces, sin redondearlas