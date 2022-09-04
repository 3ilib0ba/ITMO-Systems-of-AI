spouse("Michail Romanov", "Evdokia Streshneva").
spouse("Aleksey Romanov", "Maria Miloslavskaya").
spouse("Aleksey Romanov", "Natalya Naryshkina").
spouse("Feodor Romanov", "Marfa Apraksina").
spouse("Ioann V Romanov", "Praskof'ya Saltikova").
spouse("Karl Leopol'd", "Ekaterina Ioannovna").
spouse("Anton Ul'fik", "Anna Leopol'dovna").

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

male("Michail Romanov").
male("Aleksey Romanov").
male("Feodor Romanov").
male("Ioann V Romanov").
male("Ioann VI Romanov").
male("Karl Leopol'd").
male("Anton Ul'fik").

female("Evdokia Streshneva").
female("Natalya Naryshkina").
female("Maria Miloslavskaya").
female("Sofya Romanova").
female("Marfa Apraksina").
female("Praskof'ya Saltikova").
female("Anna Ioannovna").
female("Ekaterina Ioannovna").
female("Anna Leopol'dovna").

son(A, B)               :- parent(B, A), male(A).
daughter(A, B)          :- parent(B, A), female(A).

father(A, B)            :- parent(A, B), male(A).
mother(A, B)            :- parent(A, B), female(A).

grandfather(A, C)       :- father(A, B), father(B, C); father(A, B), mother(B, C).
grandmother(A, C)       :- mother(A, B), father(B, C); mother(A, B), mother(B, C).

greatgrandfather(A, C)  :- grandfather(A, B), father(B, C); grandfather(A, B), mother(B, C).
greatgrandmother(A, C)  :- grandmother(A, B), father(B, C); grandmother(A, B), mother(B, C).

sibling(A, B)           :- parent(C, A), parent(C, B), A \= B.

brother(A, B)           :- sibling(A, B), male(A).
sister(A, B)            :- sibling(A, B), female(A).

uncle(A, C)             :- brother(A, B), parent(B, C).
aunt(A, C)              :- sister(A, B), parent(B, C).

cousin(A, B)            :- parent(C, A), uncle(C, B); parent(C, A), aunt(C, B).