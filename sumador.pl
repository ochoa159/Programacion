
%compAND(E1,E2,S).
compAND(E1,E2,S):- E1=1,E2=1, S is 1.
compAND(E1,E2,S):- (E1=0;E2=0), S is 0.

%compOR(E1,E2,S).
compOR(E1,E2,S):- (E1=1;E2=1), S is 1.
compOR(E1,E2,S):- E1=0,E2=0, S is 0.

%compXOR(E1,E2,S).
compXOR(E1,E2,S):- E1\=E2, S is 1.
compXOR(E1,E2,S):- E1=E2, S is 0.

%Regla Suma
sumador(E1,E2,E3,R,AC):- (compXOR(E1,E2,S),compXOR(S,E3,R)),
	                 ((compAND(S,E3,RE),compAND(E1,E2,X)),
			  compOR(RE,X,AC)).
