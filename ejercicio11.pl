elim(X,[X|Y],Y).
elim(X,[Z|Y],[Z|R]):-elim(X,Y,R).
