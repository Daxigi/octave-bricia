disp(' ########### Ejercicio 5 ##############');

precision_string = input('ingresar el valor de la precision (numero positivo menor que 1): ', 's');

precision = str2double(precision_string);

if isnan(precision) || isempty(precision) || precision <= 0 || precision > 1
    fprintf('La entrada debe ser un número positivo menor que 1.\n');
    return
end

function [pi_aprox, terminos] = aproximar_pi(precision)

    pi_aprox = 0;
    signo = 1;
    i = 0;
    
    % Serie de Taylor
    while abs(pi_aprox - pi) > precision
        pi_aprox = pi_aprox + signo * 4 / (2 * i + 1);
        signo = -signo; 
        i = i + 1;
    end

    terminos = i;
end

tic; % inicia la medición del tiempo

[pi_aprox, terminos] = aproximar_pi(precision);

tiempo_ejecucion = toc; % termina medición del tiempo

fprintf('Aproximación de Pi con precisión de %.10f: %.15f\n', precision, pi_aprox);
fprintf('Número de términos usados: %d\n', terminos);
fprintf('Tiempo de ejecución: %.4f segundos\n', tiempo_ejecucion);
