function T = translate(S,a,b)
% The function translate translates a shape given by an input matrix S, by
% a units in the x-direction and b units in the y-direction.

% L is the number of columns of the input matrix - it gives the number of
% co-ordinates of the shape.
L = length(S);
T = S + [a.*(ones(1,L)); b.*(ones(1,L))];
