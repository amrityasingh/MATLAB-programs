n=input('Enter dim for matrix: ');
fprintf('eye(n)\n');
eye(n)
fprintf('ones(n)\n');
ones(n)
fprintf('tril(ones(n))\n');
tril(ones(n))

fprintf('The Wilkinson Matrix is: \n')
A= 2*eye(n)- tril(ones(n))