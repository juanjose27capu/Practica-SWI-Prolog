ruta(1,a,b).
ruta(2,a,c).
ruta(3,b,d).
ruta(4,c,d).
ruta(8,b,c).
camino(X,X,[]):-!.
camino(O,D,[X|Y]):-ruta(X,O,I),camino(I,D,Y).
