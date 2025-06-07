padre(X,Y).
madre(X,Y).
hombre(X).
mujer(X).
progenitor(X,Y).

es_madre(X):-madre(X,_).
es_padre(X):-padre(X,_).
es_hijo(X):-hombre(X),progenitor(_,X).
hija(X,Y):-mujer(X),progenitor(Y,X).
tio(X,Y):-hombre(X),progenitor(Z,X),progenitor(Z,W),progenitor(W,Y),X\=W.
sobrino(X,Y):-hombre(X),tio(Y,X).
prima(X,Y):-mujer(X),progenitor(Z,X),progenitor(W,Y),progenitor(T,Z),progenitor(T,W),Z\=W.
abuelo_o_abuela(X,Y):-progenitor(X,Z),progenitor(Z,Y).
