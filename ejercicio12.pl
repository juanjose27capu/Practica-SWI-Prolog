reves([X],[X]).
reves([X|Y],R):-reves(Y,R1),append(R1,[X],R).
