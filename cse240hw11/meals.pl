
% 2.1 entres
entre(lunch, sandwich).
entre(dinner, spaghetti).

% sides
side(lunch, chips).
side(lunch, lemonade).
side(dinner, bread).
side(dinner, greentea).

% ingredients
ingredient(chips, potato).
ingredient(chips, salt).
ingredient(lemonade, lemon).
ingredient(lemonade, sugar).
ingredient(bread, egg).
ingredient(bread, flour).
ingredient(greentea, green).
ingredient(greentea, tea).

% 2.2  meal rule
meal(X,Y) :-
entre(X,Y);
side(X,Y).

% 2.3 shoppinglist rule
shoppinglist(X,Y) :-
side(X, Side),
ingredient(Side, Y).
