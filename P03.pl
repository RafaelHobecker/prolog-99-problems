%1.03 Find the K’th element of a list.

k_element(X,[X|_],1).

k_element(X,[_|T],K):-K>1,K1 is K-1,k_element(X,T,K1).


