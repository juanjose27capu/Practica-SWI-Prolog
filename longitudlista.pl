%Definir un predicado que calcule la longitud de una lista.

longitud([],0).
longitud([X|Y],L):-longitud(Y,L1), L is L1+1.
