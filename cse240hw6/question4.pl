% bella sheridan
my_flatten([], []) :- !. % stopping condition

my_flatten([H | T], Flat):- % head is a list
is_list(H), !, % check if head is a list then ignore other rules
my_flatten(H, FH), % flatten head
my_flatten(T, FT), % flatten tail
append(FH, FT, Flat). % put together 

my_flatten([H | T], [H | FT]) :- % if head is not a list - keep H is front of FT (flattened tail)
my_flatten(T, FT). 
