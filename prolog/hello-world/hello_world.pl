% Please visit http://exercism.io/languages/prolog/installation
% for instructions on setting up prolog.
% Visit http://exercism.io/languages/prolog/tests
% for help running the tests for prolog exercises.

% Replace the goal below with
% your implementation.

hello_world('Hello World!').

hello_world(Name, X) :-
    string_concat(X0, '!', X),
    string_concat('Hello ', Name, X0).
