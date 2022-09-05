spouse("Michail Romanov", "Evdokia Streshneva").
spouse("Aleksey Romanov", "Maria Miloslavskaya").
spouse("Aleksey Romanov", "Natalya Naryshkina").
spouse("Feodor Romanov", "Marfa Apraksina").
spouse("Ioann V Romanov", "Praskof'ya Saltikova").
spouse("Karl Leopol'd", "Ekaterina Ioannovna").
spouse("Anton Ul'fik", "Anna Leopol'dovna").
spouse("Petr I Romanov", "Evdokia Lopouhina").
spouse("Aleksey Petrovich", "Natalya Braunshveyg").
spouse("Petr I Romanov", "Ekaterina I Alekseevna").
spouse("Karl Fridrih Golfshtein", "Anna Petrovna").
spouse("Ekaterina II Alekseevna", "Petr III Fedorovich").


parent("Michail Romanov", "Aleksey Romanov").
parent("Evdokia Streshneva", "Aleksey Romanov").
parent("Aleksey Romanov", "Feodor Romanov").
parent("Aleksey Romanov", "Sofya Romanova").
parent("Aleksey Romanov", "Ioann V Romanov").
parent("Maria Miloslavskaya", "Feodor Romanov").
parent("Maria Miloslavskaya", "Sofya Romanova").
parent("Maria Miloslavskaya", "Ioann V Romanov").
parent("Ioann V Romanov", "Anna Ioannovna").
parent("Ioann V Romanov", "Ekaterina Ioannovna").
parent("Praskof'ya Saltikova", "Anna Ioannovna").
parent("Praskof'ya Saltikova", "Ekaterina Ioannovna").
parent("Karl Leopol'd", "Anna Leopol'dovna").
parent("Ekaterina Ioannovna", "Anna Leopol'dovna").
parent("Anton Ul'fik", "Ioann VI Romanov").
parent("Anna Leopol'dovna", "Ioann VI Romanov").
parent("Aleksey Romanov", "Petr I Romanov").
parent("Natalya Naryshkina", "Petr I Romanov").
parent("Petr I Romanov", "Aleksey Petrovich").
parent("Evdokia Lopouhina", "Aleksey Petrovich").
parent("Aleksey Petrovich", "Petr II Alekseevich").
parent("Natalya Braunshveyg", "Petr II Alekseevich").
parent("Petr I Romanov", "Anna Petrovna").
parent("Ekaterina I Alekseevna", "Anna Petrovna").
parent("Petr I Romanov", "Elizaveta Petrovna").
parent("Ekaterina I Alekseevna", "Elizaveta Petrovna").
parent("Karl Fridrih Golfshtein", "Petr III Fedorovich").
parent("Anna Petrovna", "Petr III Fedorovich").


male("Michail Romanov").
male("Aleksey Romanov").
male("Feodor Romanov").
male("Ioann V Romanov").
male("Ioann VI Romanov").
male("Karl Leopol'd").
male("Anton Ul'fik").
male("Petr I Romanov").
male("Aleksey Petrovich").
male("Petr II Alekseevich").
male("Karl Fridrih Golfshtein").
male("Petr III Fedorovich").


female("Evdokia Streshneva").
female("Natalya Naryshkina").
female("Maria Miloslavskaya").
female("Sofya Romanova").
female("Marfa Apraksina").
female("Praskof'ya Saltikova").
female("Anna Ioannovna").
female("Ekaterina Ioannovna").
female("Anna Leopol'dovna").
female("Evdokia Lopouhina").
female("Natalya Braunshveyg").
female("Ekaterina I Alekseevna").
female("Anna Petrovna").
female("Elizaveta Petrovna").
female("Ekaterina II Alekseevna").


son(A, B)               :- parent(B, A), male(A).
daughter(A, B)          :- parent(B, A), female(A).

father(A, B)            :- parent(A, B), male(A).
mother(A, B)            :- parent(A, B), female(A).

grandfather(A, C)       :- father(A, B), father(B, C); father(A, B), mother(B, C).
grandmother(A, C)       :- mother(A, B), father(B, C); mother(A, B), mother(B, C).

sibling(A, B)           :- parent(C, A), parent(C, B), A \= B.

brother(A, B)           :- sibling(A, B), male(A).
sister(A, B)            :- sibling(A, B), female(A).
