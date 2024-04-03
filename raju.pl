:- initialization(main).

female(meena).
female(rita).
male(raju).
tall(meena).

likes(raju, Y) :- (female(Y); tall(Y)).

main :- 
    likes(raju, Y),
    write('Raju likes '), write(Y), nl,
    halt.
