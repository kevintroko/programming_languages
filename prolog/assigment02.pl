% ----------------------------------------------------------------------
%
% Kevin Oswaldo Cabrera Navarro A01227157
%
% Prolog Exercises
% For each of these problems, the aim is to define a predicate using
% few clauses. Each of the problems is a list processing problem.
%
% Problems Done:
% 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 16, 18
%
%  # Problems: 15
% ----------------------------------------------------------------------

% 1. Write a predicate print every second/1 to print every other element in a list, 
% beginning at the second element —i.e. the 2nd, 4th, 6th elements etc. 
% usage: printeverysecond([1,2,3,4]).
printeverysecond([X]). % It should succeed given a list.
printeverysecond([]).
printeverysecond([X, Y| T]):-
    write(Y),printeverysecond(T).

% 2. Write a predicate deconsonant/1 to print any element of a list that isn’t a consonant 
% (i.e. we want to print out the vowels fa,e,i,o,ug). It should always succeed provided it is
% given a list as its argument (we assume that the input list only contains vowels and consonants).
% usage: deconsonant([a,e,f]).
deconsonant([]).
deconsonant([X|Y]):-
    vocal(X),
    write(X),
    deconsonant(Y).
deconsonant([X|Y]):-
    deconsonant(Y).
% Knowledge Base
vocal(a).
vocal(e).
vocal(i).
vocal(o).
vocal(u).

% 3. Write a predicate head/2 which takes a list as its first argument and returns 
% the head of the list as its second argument. It should fail if there is no first element.
% usage: head([1,2,3], X).
head([X|Y], X).

% 4. Write a predicate tail/2 which takes a list as its first argument and returns the tail 
% of the list as its second argument. It should fail if there is no first element.
% usage: tail([1,2,3], Y).
tail([X|Y], Y).

% 5. Write a predicate last/2 which takes a list as its first argument and returns the 
% last element of the list. L = List and Z = Last
% usage: last([1,2,3], X).
last(L, Z) :- append(X, [Z], L).

% 6. Write a predicate max/3 which takes three arguments, 
% the first two are positive integer numbers and returns in the third the max of them.
% usage:
max(A, B, X) :-
    (A < B -> X is B; 
     A > B -> X is A
).

% 7. Write a predicate fact/2 which takes a natural number as first argument, and 
% returns the factorial of the number.
% Based on https://www.quora.com/How-can-you-write-a-pseudocode-for-a-factorial-number
% usage:
fact(0,1).
fact(N, F):-
    N > 0,
    N1 is N-1,
    fact(N1, F1),
    F is N * F1.

% 8. Write a predicate fib/2 which takes a natural number as first argument, and returns the value 
% of the Fibonacci sequence for that position (counting from 1).
% usage:
fib(0,0).
fib(1,1).
fib(N,Y):-
  N>1,
  N1 is N-1,
  fib(N1,Y1),
  N2 is N-2,
  fib(N2,Y2),
  Y is Y1+Y2.

% 9. Write a predicate length2/2 which takes a list as first argument, and returns in the 
% second one the number of elements in the list.
% usage: lenght([1], 0).
lenght([], 0).
lenght([A|B], R):-
    lenght(B, R1),
    R is R1 + 1.

% 11. Write a predicate count_vowels/2 which takes a list as its first argument and returns 
% an integer number (as its second argument) which consists of the count of 
% elements of the input list which are a vowel (we assume that the input list only 
% contains vowels and consonants).
% usage: count_vowels([a, e, i], X).
count_vowels([], 0).
count_vowels([T|[]], 1):-
	vowel(T).
count_vowels([H|T], X):-
	(vowel(H) ->
	count_vowels(T, X1),
	X is X1+1
	; count_vowels(T, X)).	

% 12. Write a predicate vowels/2 which takes a list as its first argument and returns a 
% list (as its second argument) which consists of the elements of the input list which 
% are a vowel (we assume that the input list only contains vowels and consonants).
% Usage: vowels([a,e,i,f], X).
vowels([], []).
vowels([T|[]], [T]):-
	vowel(T).
vowels([H|T], X):-
	(vowel(H) ->
	vowels(T, X1),
	append([H], X1, X); vowels(T, X)).
    vowel(a). % Similar to #2 
    vowel(e).
    vowel(i).
    vowel(o).
    vowel(u).

% 13. Define nple/3 to take two inputs —an integer and a list of integers. 
% The result is to be a list of integers formed by multiplying 
% each integer in the list by the input integer.
% usage: nple(1, [1,2,3], X).
nple(M, [], []).
nple(M, [A|[]], [X]):-
	X is A * M.
nple(M,[H|T], X):-
	nple(M, T, X1),
	V is H * M,
	append([V], X1, X).

% 15. Write a predicate find every second/2 which takes a list as its first argument and 
% returns a list (as its second argument) which consists of every other element
% of the input list starting at the second element.
findeverysecond([], []).
findeverysecond([X], []).
findeverysecond([X, Y|T], [Y| Rest]):-
    write(Y),
    findeverysecond(T, Rest).

% 16. Define sum/2 to take a list of integers as input and return the output as their sum.
sum([], 0).
sum([H|T], X) :-
   sum(T, Y),
   X is H + Y.

% 18. Write a predicate dupli/2 which takes two inputs: the first is a list, and the second 
% will be the list with every element duplicated.
dupli([], []).
dupli([H|T], A):-
  dupli(T, S),
  A = [H, H|S].
