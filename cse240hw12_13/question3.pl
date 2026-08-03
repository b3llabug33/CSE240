% bella sheridan
% quick sort with second as pivot 
qsort2([],[]):- !. % stopping condition with return value
qsort2([X],[X]) :- !. 
qsort2([First | [Pivot | Tail]], Sorted):- % size n problem choosing 2nd as pivot not 1st
split(Pivot, [First | Tail], L1, L2),  % size m
qsort2(L1, Sorted1), % size m
qsort2(L2, Sorted2), % size m 
append(Sorted1,[Pivot | Sorted2], Sorted). % construction of n from m

split(_,[],[],[]). % stopping condition
split(Pivot, [X | T], [X | Le], Gt) :- % size m
X =< Pivot, split(Pivot,T,Le,Gt).
split(Pivot, [X|T], Le, [X|Gt]) :- % size m
X > Pivot, split(Pivot,T,Le,Gt).

