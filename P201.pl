% 2.01 Determine whether a given integer number is prime.

is_prime(2). %Caso base 1: El 2 es el primer y único número primo par.
is_prime(3). %Caso base 2: El 3 es el segundo número primo.

%Regla general para números P mayores que 3.
is_prime(P) :- integer(P), %Asegurarnos de que P es un número entero.
    P > 3, %La regla se aplica solo a números mayores que 3.
    P mod 2 =\= 0, %Si P es divisible por 2, no es primo.
    \+ has_factor(P,3). % El nùmero P no debe tener un factor impar.

has_factor(N,L) :- %Caso Base: N sí tiene el factor L.
    N mod L =:= 0. % Si N es divisible por L, entonces hemos encontrado un factor,no es Primo.

has_factor(N,L) :- %Caso Recursivo: N no es divisible por L.
    L * L < N,  %Si L*L >N, N es primo.
    L2 is L + 2, %Calculamos el siguiente factor a comprobar, saltando de 2 en 2.
    has_factor(N,L2). %Llamada recursiva
