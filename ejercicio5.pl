potencia(_,0,1).
potencia(X,Y,Z):-Y>0,A is Y-1, potencia(X,A,X1), Z is X*X1.

