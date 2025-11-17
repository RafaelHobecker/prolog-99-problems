
remove_kth(X,[X|Xs],1,Xs).

remove_kth(X,[H|Xs],K,[H|Ys]):- K>1,K1 is K-1,remove_kth(X,Xs,K1,Ys).


