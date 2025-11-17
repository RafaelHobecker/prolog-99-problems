% 1.21 Insert an element at a given position into a list.

insert_at(X,L,1,[X|L]).

insert_at(X,[H|T],K,[H|R]):- K>1,K1 is K-1,insert_at(X,T,K1,R).

