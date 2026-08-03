/* Database for family tree. It consists of facts and rules. */
/* The section in the highlighted box above has been completed for you */
/* Facts */
& list all males then all females, i learned that if they are mixed up it doesnt compile
male(abe).
male(rob).
male(jim).
male(ben).
male(bud).
male(kai).
male(mac).
male(tex).
male(roy).
male(lee).

female(joy).
female(ana).
female(mia).
female(mae).
female(amy).
female(kim).
female(zoe).
female(val).
female(pam).

& list father of then mother of
father_of(abe, ana).  
father_of(abe, rob).
father_of(abe, jim).
father_of(jim, mac).
father_of(jim, kim).
father_of(bud, zoe).
father_of(bud, val).
father_of(bud, tex).
father_of(bud, roy).
father_of(ben, bud).
father_of(ben, amy).
father_of(kai, lee).
father_of(kai, pam).

mother_of(joy, rob).  
mother_of(joy, jim).
mother_of(joy, ana).
mother_of(mia, mac).
mother_of(mia, kim).
mother_of(ana, zoe).
mother_of(ana, val).
mother_of(ana, tex).
mother_of(ana, roy).
mother_of(mae, bud).
mother_of(mae, amy).
mother_of(amy, lee).
mother_of(amy, pam).
/* Complete the facts given in the diagram above */
/* Rules */
% 1.1
is_male(X) :-
male(X);
father_of(X, _).

% 1.2
is_female(X) :-
female(X);
mother_of(X, _).

% 1.5
parent_of(X,Y) :-
mother_of(X,Y);
father_of(X,Y).

% 1.3
grandmother_of(X,Z) :-
is_female(X),
parent_of(X,Y),
parent_of(Y,Z).

grandfather_of(X,Z) :-
is_male(X),
parent_of(X,Y),
parent_of(Y,Z).

% 1.6
descendent_of(X,Y) :-
parent_of(Y,X).
% recursive call X is a decsendant of Y is X has a parent(Z) who is a descendant of Y
descendent_of(X,Y) :-
parent_of(Z,X),
descendent_of(Z,Y).


 
