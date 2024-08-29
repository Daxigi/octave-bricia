disp(' ########### Ejercicio 3 ##############')

Num = input('Ingrese cantidad de numeros desea: ');
a=0;
b=1;
acum = 0;

    fprintf('%d /n %d', a, b)

fprintf('Termino %d : -- Valor :%d\n', 1, 1);
for i=1: Num
    acum= a + b;
    a= b;
    b = acum;
    fprintf('Termino %d : -- Valor :%d\n', i+1, acum);
end