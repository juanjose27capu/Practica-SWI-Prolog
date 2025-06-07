datos(tree(carla,
           tree(miguel,
                tree(carlos,nil,nil),
                tree(maria,nil,nil)),
           tree(mirian,
                tree(patri,nil,nil),
                tree(jorge,nil,nil)))).

recorrer(nil).
recorrer(tree(X,Y,Z)):-writeln(X),recorrer(Y),recorrer(Z).
mostrar:-datos(X),recorrer(X).

% Indicar si un arbol es binario.

esbinario(nil).
esbinario(tree(_,Y,Z)):-esbinario(Y),esbinario(Z).
indicar:-datos(X),esbinario(X).

% Mostrar los nodos que son hojas.

mostrarnodos(tree(X,nil,nil)):-writeln(X),!.
mostrarnodos(tree(_,Y,Z)):-mostrarnodos(Y),mostrarnodos(Z).
nodoshojas:-datos(X),mostrarnodos(X).

% Mostrar los nodos que no son hojas.

mostrar3(tree(_,nil,nil)).
mostrar3(tree(X,Y,Z)):-writeln(X),mostrar3(Y),mostrar3(Z).
sinhojas:-datos(X),mostrar3(X).

% Calcular la cantidad de nodos.

calculo(tree(_,nil,nil),1).
calculo(tree(_,Y,Z),R):-calculo(Y,R1),calculo(Z,R2),R is R1+R2.
calcularnodos:-datos(X),calculo(X,Y),write(Y).
