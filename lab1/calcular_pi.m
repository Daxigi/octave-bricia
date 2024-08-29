disp(' ########### Ejercicio 5 ##############');

precision_string = input('ingresar el valor de la precision: ', 's');

precision = str2double(precision_string);

if isnan(precision) || isempty(precision) || precision <= 0
    fprintf('La entrada debe ser un número positivo.\n');
    return
end

function [pi_aprox, terminos] = aproximar_pi(precision)

    pi_aprox = 0;
    signo = 1;
    i = 0;
    
    % serie de taylor
    while abs(pi_aprox - pi) > precision
        pi_aprox = pi_aprox + signo * 4 / (2 * i + 1);
        signo = -signo; 
        i = i + 1;
    end

    terminos = i;
end

[pi_aprox, terminos] = aproximar_pi(precision);

fprintf('Aproximación de Pi con precisión de %.10f: %.15f\n', precision, pi_aprox);
fprintf('Número de términos usados: %d\n', terminos);