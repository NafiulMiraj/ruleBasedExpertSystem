% facts about animals
animal(dog, [has_fur, says_woof]).
animal(cat, [has_fur, says_meow]).
animal(duck, [has_feathers, says_quack]).
animal(horse, [has_fur, has_hooves]).

% prompt for user input
is_true(Question) :-
    write(Question), write('? (yes/no): '),
    read(Answer),
    member(Answer, [yes, y]).

% main query
identify_animal :-
    write('Welcome to the animal identification system!\n'),
    write('Please answer the following questions to identify the animal.\n'),
    animal(Animal, Characteristics),
    has_characteristics(Animal, Characteristics),
    write('The identified animal is: '), write(Animal), nl,
    write('Would you like to identify another animal? (yes/no)\n'),
    read(Continue),
    (Continue = yes ; Continue = y),
    !,
    identify_animal.
identify_animal :- 
    write('Goodbye!\n').

% check if an animal has given characteristics
has_characteristics(_, []).
has_characteristics(Animal, [Characteristic|Characteristics]) :-
    is_true(Characteristic),
    has_characteristics(Animal, Characteristics).

% entry point
:- initialization(identify_animal).
