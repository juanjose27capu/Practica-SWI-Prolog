medico(m1,rosales).
medico(m2,manni).
paciente(p1,juan).
paciente(p2,ana).
atiende(m1,p1).
atiende(m1,p2).
atiende(m2,p2).

main:-
    menu,
    read(O),
    ejecutar(O),
    main.

ejecutar(1):-write("Ingrese el nombre del m�dico: "),read(M),buscar1(M).
buscar1(X):-medico(Y,X),atiende(Y,Z),paciente(Z,T),writeln(T),fail.
buscar1(_).

ejecutar(2):-write("Ingrese el nombre del paciente: "),read(M),buscar2(M).
buscar2(X):-paciente(Y,X),atiende(Z,Y),medico(Z,T),writeln(T),fail.
buscar2(_).

ejecutar(3):-writeln("ADIOS!"),
    sleep(2),
    halt.

menu:-writeln("MENU DE OPCIONES"),
writeln("1.Dado un m�dico, listar los pacientes que atiende."),
writeln("2.Dado un paciente, listar los m�dicos que lo atienden."),
writeln("3.Terminar."),
write("Elija una opci�n: ").


