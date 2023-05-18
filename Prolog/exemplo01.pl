%Base de conhecimento

progenitor(maria,jose).
progenitor(joao,jose).
progenitor(joao,ana).
progenitor(ana,carlos).
progenitor(jose,julia).
progenitor(jose,iris).
progenitor(iris,jorge).
masculino(jose).
masculino(carlos).
masculino(joao).
masculino(jorge).
feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).

%-----Regras---------
avo(X,Y):-progenitor(X,Z),progenitor(Z,Y).
neto(X,Y):-avo(Y,X).
mae(X,Y):-progenitor(X,Y),feminino(X).
pai(X,Y):-progenitor(X,Y),masculino(X).
irma(X,Y):-progenitor(Z,X),progenitor(Z,Y),feminino(X),\=(X,Y).
irmao(X,Y):-progenitor(Z,X),progenitor(Z,Y),masculino(X),\=(X,Y).
tio(X,Y):-irmao(X,Z),progenitor(Z,Y).
tia(X,Y):-irma(X,Z),progenitor(Z,Y).

