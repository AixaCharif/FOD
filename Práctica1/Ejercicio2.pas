{2. Realizar un algoritmo, que utilizando el archivo de números enteros no ordenados
creado en el ejercicio 1, informe por pantalla cantidad de números menores a 1500 y el
promedio de los números ingresados. El nombre del archivo a procesar debe ser
proporcionado por el usuario una única vez. Además, el algoritmo deberá listar el
contenido del archivo en pantalla.}


program Ejercicio2;

type
    archivo = file of integer;

var
    arch_log: archivo;
    arch_fis: string[12];
    ctot, suma, cant, nro: integer;

BEGIN
    writeln ('Ingrese el nombre del archivo');
    readln (arch_fis);
    assign (arch_log,arch_fis);
    reset (arch_log);
    ctot := 0; 
    cant := 0; 
    suma := 0;
    while (not eof(arch_log)) do begin
        read (arch_log, nro);
        ctot:= ctot + 1; 
        suma:= suma + nro;
        if (nro < 1500) then begin
            cant:= cant + 1;
        end;
    end;
    close (arch_log);
    writeln ('Cantidad de números menores a 1500: ', cant);
    writeln ('Promedio de números ingresados: ', (suma/ctot));
END.
