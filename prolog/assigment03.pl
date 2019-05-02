% Kevin O. Cabrera Navarro 
% A01227157
% Based on the Dr. Gildardo Sanchez-Ante solution

% Problem: Monkey wants a banana but can stretch high enough from the flor
% move(State1, Move, State2)

% Grab the banana 
% Change: from hasnot -> has
move(state(middle, onbox, middle, hasnot),
    grab,
    state(middle, onbox, middle, has)). 

% Climb the box
% Change: from floor -> box
move(state(P, onfloor, P, Banana),         
    climb,
    state(P, onbox, P, Banana)).

% Push Box - Inflor
% Change: from onfloor -> onfloor
move(state(P1, onfloor, P1, Banana),         % push box from P1 to P2
    push(P1, P2),  
    state(P2, onfloor, P2, Banana)).

% Change: from P1 -> P2
move(state(P1, onfloor, Box, Banana),        % walk from P1 to P2
    walk(P1, P2),
    state(P2, onfloor, Box, Banana) ).

% Question: can the monkey in some initial state State get the banana?
% state(Monkey location, onbox/onfloor, box location, has/hasnot)

canget(state(_, _, _, has)).                % Monkey already has it, goal state

canget(State1) :-                           % not goal state, do some work to get it
      move(State1, Action, State2),           % do something (grab, climb, push, walk) 
      canget(State2).                       % canget from State2

% get plan = list of actions 

canget(state(_, _, _, has), []).            % Monkey already has it, goal state

canget(State1, Plan) :-                     % not goal state, do some work to get it
      move(State1, Action, State2),           % do something (grab, climb, push, walk) 
      canget(State2, PartialPlan),          % canget from State2
      add(Action, PartialPlan, Plan).       % add action to Plan

add(X, P, [X|P]).

% ?- canget(state(atdoor, onfloor, atwindow, hasnot), Plan).
% Plan = [walk(atdoor, atwindow), push(atwindow, middle), climb, grasp] 
% Yes

% ?- canget(state(atwindow, onbox, atwindow, hasnot), Plan ).
% No

% ?- canget(state(Monkey, onfloor, atwindow, hasnot), Plan).
% Monkey = atwindow
% Plan = [push(atwindow, middle), climb, grasp] 
% Yes
