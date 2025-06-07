modulo(X,X,0).
modulo(X,Y,X):-X<Y.
modulo(X,Y,Z):-X>Y,A is X-Y,modulo(A,Y,Z).
