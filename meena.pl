:- initialization(main).

sincere(meena).
hardworking(meena).
student(meena).

successful(X) :- sincere(X), hardworking(X).

main :-
    successful(meena),
    write('true'),
    nl,
    halt.
main :-
    write('false'),
    nl,
    halt.
