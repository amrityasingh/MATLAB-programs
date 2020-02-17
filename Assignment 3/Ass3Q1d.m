syms a b c x
eqn = 3*x^2 + 2*x + 6 == 0
S = solve(eqn,x)
Sv =vpasolve(eqn,x)