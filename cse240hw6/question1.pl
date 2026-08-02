% bella sheridan prolog homework

% 1.1 - four colors

% 1.2

% define all the edges

edge(idaho, montana).
edge(idaho, wyoming).
edge(idaho, utah).
edge(idaho, nevada).
edge(idaho, oregon).
edge(idaho, washington).

edge(nevada, cali).
edge(nevada, arizona).
edge(nevada, utah).
edge(nevada, oregon).

edge(cali, arizona).
edge(cali, nevada).
edge(cali, oregon).

edge(arizona, newMexico).
edge(arizona, utah).

edge(newMexico, colorado).

edge(utah, colorado).
edge(utah, wyoming).

edge(washington, oregon).

edge(montana, wyoming).

edge(colorado, wyoming).

% colors

color(arizona, green).
color(colorado, green).
color(oregon, green).
color(montana, green).

color(washington, purple).
color(utah, purple).
color(cali, purple).
color(newMexico, purple).

color(idaho, pink).
color(hawaii, pink).
color(alaska, pink).

color(wyoming, orange).
color(nevada, orange).

% 1.3

adjacent(X, Y) :-
edge(X, Y);
edge(Y, X).

% 1.4

miscolor(S1, S2, C) :-
adjacent(S1, S2),
color(S1, C),
color(S2, C).

% 1.5

q :- miscolor(S1, S2, C).
