%Escribir la suma de los elementos positivos de una lista.

positivos([],0).
positivos([X|Y],R):-X>0,positivos(Y,R1), R is R1+X.
positivos([X|Y],R):-X=<0,positivos(Y,R1), R is R1.
