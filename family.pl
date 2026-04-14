% עובדות: parent(הורה, ילד).

parent(avi, dan).
parent(avi, yossi).
parent(rina, dan).
parent(rina, yossi).

% כלל: סבא/סבתא
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
