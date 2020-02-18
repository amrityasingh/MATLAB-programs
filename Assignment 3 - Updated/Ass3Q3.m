syms x;

% Input Section
y = input('Enter non-linear equations: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
fprintf('Tolerable error');
e = 10^(-4)

a1=a;
b1=b;

a2=a;
b2=b;

n=0;
n1=0;

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

% Implementing Bisection Method
fprintf('\n Criteria using value of the function: ');
if fa*fb > 0 
    disp('Given initial values do not bracket the root.');
else
    c = (a+b)/2;
    fc = eval(subs(y,x,c));
    fprintf('\n\n\tn\t\ta\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',n,a,b,c,fc);
        if fa*fc< 0
            b =c;
            n=n+1;
        else
            a =c;
            n=n+1;
        end
        c = (a+b)/2;
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n', c);
end

% Finding Functional Value
fa1 = eval(subs(y,x,a1));
fb1 = eval(subs(y,x,b1));


fprintf('\n Criteria using difference of roots: ');
if fa1*fb1 > 0 
    disp('Given initial values do not bracket the root.');
else
    c1 = (a1+b1)/2;
    fc1 = eval(subs(y,x,c1));
    fprintf('\n\n\tn1\t\ta1\t\t\tb1\t\t\tc1\t\t\tf(c1)\n');
    while abs(b1-a1)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',n1,a1,b1,c1,fc1);
        if fa1*fc1< 0
            b1 =c1;
            n1=n1+1;
        else
            a1 =c1;
            n1=n1+1;
        end
        c1 = (a1+b1)/2;
        fc1 = eval(subs(y,x,c1));
    end
    fprintf('\nRoot is: %f\n', c1);
end

fprintf('\nThe root of the equation calculated using inbuilt func: ');
p=vpasolve(y,x,[a2 b2]);
p1=double(p)

err= abs(((c-p1)/p1) *100);
fprintf('\nRelative error using Function value as termination criteria: %f ', err);

err1= abs(((c1- p1)/p1) *100);
fprintf('\nRelative error using difference of roots: %f ', err1);



