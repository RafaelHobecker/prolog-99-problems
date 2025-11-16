% 1.04 Find the number of elements of a list.

number_elements(0,[]).
number_elements(X,[_|T]):-number_elements(X1,T), X is X1+1.




