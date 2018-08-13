real((A,_),A).
imaginary((_,B),B).

conjugate((A,0), (A,0)).
conjugate((_,B), (_,R)) :- R is B * -1.

abs((A,_), A).
abs((A,_), R) :- R is A * -1, A < 0.
abs((_,B), B).
abs((_,B), R) :- R is B * -1, B < 0.
abs((A,B), R) :- R is sqrt(A**2 + B**2).

add((A1,_), (A2,_), (A,_)) :- A is A1 + A2.
add((_,B1), (_,B2), (_,B)) :- B is B1 + B2.
sub((A1,_), (A2,_), (A,_)) :- A is A1 - A2.
sub((_,B1), (_,B2), (_,B)) :- B is B1 - B2.

mul((A1,0), (A2,0), (A,0)) :- A is A1 * A2.
mul((A1,B1), (A2,B2), (A,B)) :- 
    A is A1 * A2 - B1 * B2,
    B is B1 * A2 + A1 * B2.
div((A1,0), (A2,0), (A,0)) :- A is (A1 * A2) / A2**2.
div((0,B1), (0,B2), (B,0)) :- B is (B1 * B2) / B2**2.
div((A1,B1), (A2,B2), (A,B)) :-
    A is (A1 * A2 + B1 * B2) / (A2**2 + B2**2),
    B is (B1 * A2 - A1 * B2) / (A2**2 + B2**2).
