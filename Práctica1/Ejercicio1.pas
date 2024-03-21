{1. Realizar un algoritmo que cree un archivo de números enteros no ordenados y permita
incorporar datos al archivo. Los números son ingresados desde teclado. La carga finaliza
cuando se ingresa el número 30000, que no debe incorporarse al archivo. El nombre del
archivo debe ser proporcionado por el usuario desde teclado.}


program Ejercicio1

type 
    archivo = file of integer;

var 
    arch_log: archivo;
    arch_fis: string[12];
    nro: integer;

BEGIN
    writeln ('Ingrese el nombre del archivo');
    readln (arch_fis);
    assign (arch_log,arch_fis);
    rewrite (arch_log);
    writeln ('Ingrese un número');
    readln (nro);
    while (nro <> 3000) do begin
        write (arch_log,nro);
        writeln ('Ingrese un número');
        readln (nro);
    end; 
    close (arch_log);
END.