% bella sheridan

isort([],[]) :- !. % stopping condition and return value 

isort([First | Tail], Sorted) :- % size n problem
isort(Tail, STail), % size m problem
insert(First, STail, Sorted). % construction of size n from size m - insert first element back to front of list

insert(X, [], [X]) :- !. % stopping condition
insert(X, [H|T], [X,H|T]) :- X =< H, !. % size m problem - if x is smaller than or equal to the head put it in front
insert(X, [H|T], [H|R]) :- X > H, insert(X, T, R). % size m - if x is bigger keep H and insert X in the tail







