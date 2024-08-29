disp(' ########### Ejercicio 5 ##############')


function pi_aproximado = aproximar_pi(n)
    pi_aproximado = 0;
    for i = 0:(n-1)
        pi_aproximado += 4 * ((-1) ^ i) / (2 * i + 1);
    end
end

function main()
    n = input('Ingrese el número de términos para la aproximación de π: ');
    
    pi_aproximado = aproximar_pi(n);
    
    fprintf('La aproximación de π con %d términos es: %f\n', n, pi_aproximado);
end

main()