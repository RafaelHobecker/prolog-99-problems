% 1.22 Create a list containing all integers within a given range.
range(X,X,[X]).

range(X,K,[X|T]):-X<K, X1 is X+1,range(X1,K,T).

