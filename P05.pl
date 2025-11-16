% 1.05 Reverse a list.

reverse(Lista,ListaInvertida):-inversorAcumulador(Lista,[],ListaInvertida).

%aux function inversorAcumulador

inversorAcumulador([],Acumulador,Acumulador).
inversorAcumulador([H|T],Acumulador,ResultadoFinal):- inversorAcumulador(T,[H|Acumulador],ResultadoFinal).

%Lista es la lista original que se desea invertir

%ListaInvertida es la Lista Resultante,invertida.

% Acumulador almacena los elementos ya procesados, que se convierten en
% la lista invertida parcial.

%ResultadoFinal es el Resultado Final de la Inversión

