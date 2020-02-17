syms x;

% Input Section
y = input('Enter non-linear equations: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
fprintf('Tolerable error');
e = 10^(-3)

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

fprintf('\nImplementing Bisection Method');
if fa*fb > 0 
    disp('\nGiven initial values do not bracket the root.');
else
    c = (a+b)/2;
    fc = eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc< 0
            b =c;
        else
            a =c;
        end
        c = (a+b)/2;
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot(Bisection) is: %f\n', c);
end

fprintf('\nImplementing Regula Falsi Method');
if fa*fb > 0 
    disp('\nGiven initial values do not bracket the root.');
else
    c = a - (a-b) * fa/(fa-fb);
    fc = eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc< 0
            b =c;
            fb = eval(subs(y,x,b));
        else
            a =c;
            fa = eval(subs(y,x,a));
        end
        c = a - (a-b) * fa/(fa-fb);
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot(Regula Falsi) is: %f\n', c);
end

fprintf('\nRoot calculated using inbluilt func. : ');
vpasolve(y)
