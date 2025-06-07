animales(mamifero([vaca,mono])).
animales(reptil([serpiente,coco])).
animales(pez([salmon])).

es(X):-animales(Y),Y=..[Z,W],member(X,W),write(Z),!.
es(_):-write("ERROR"),fail.
