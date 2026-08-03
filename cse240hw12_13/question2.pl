% bella sheridan
%
% 2.1 - define pizza rule 
pizza(P, M, B, O, C) :-
member(P, [0,1,2,3,4,5,6,7,8,9]), /* max peperoni is 9 cause 9 * 5 = 45 */
member(M, [0,1,2,3,4]),
member(B, [0,1,2,3,4,5,6]),
member(O, [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]),
member(C, [0,1,2,3,4,5]),
W is 5*P + 10*M + 7*B + 3*O + 8*C,
W =:= 45.

% 2.2 q2 
q2 :- pizza(1, 2, 2, 2, 2).
% answer - no 

% 2.3 q3
q3 :- pizza(1, M, 1, O, C).
% answer - C=3 M=0 O=3,  C=0 M=0 O=11, C=1 M=1 O=5, C=0 M=3 O=1

% 2.4 q4
q4 :- pizza(P, M, B, O, 1). 
/* B=1 M=0 O=10 P=0
   4 0 3 0
   0 1 9 0
   3 1 2 0
   2 2 1 0
   1 3 0 0
   2 0 6 1
   1 1 5 1
   0 2 4 1
   0 0 9 2
   3 0 2 2
   2 1 1 2
   1 2 0 2
   1 0 5 3
   0 1 4 3
   2 0 1 4
   1 1 0 4
   0 0 4 5
   1 0 0 6
*/
