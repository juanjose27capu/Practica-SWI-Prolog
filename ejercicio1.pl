humano(turing).
humano(socrates).
griego(socrates).
mortal(X) :- humano(X).
consulta(Y):-mortal(Y),griego(Y).
