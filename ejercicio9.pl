adyac(X,Y,[X,Y|_]).
adyac(X,Y,[Y,X|_]).
adyac(X,Y,[_,Z|L]):-adyac(X,Y,[Z|L]).
