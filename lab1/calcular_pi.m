precision = input('ingresar el valor de la precision')

function pi_aprox = aproximar_pi(precision)
    % Inicializar variables
    pi_aprox = 0;
    signo = 1;
    i = 0;
    
    % Cálculo de Pi usando la serie de Taylor
    while abs(pi_aprox - pi) > precision
        pi_aprox = pi_aprox + signo * 4 / (2 * i + 1);
        signo = -signo;  % Alternar el signo
        i = i + 1;
    end
    
    % Mostrar resultados
    fprintf('Aproximación de Pi con precisión de %.10f: %.15f\n', precision, pi_aprox);
    fprintf('Número de términos usados: %d\n', i);
endc

% Ejemplo de uso: calcular Pi con 3, 4 y 5 dígitos decimales exact
