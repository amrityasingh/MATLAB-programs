fprintf('Colon\n');
x=input('Enter start value: ')
y=input ('Enter end value: ')

choice = menu('Generate n points? (default is 100)','yes', 'no');
if choice ==1
    n=input('Enter the value of n: ');
    b= logspace(x,y,n);
    disp(b);
    pause;
else
    a= logspace(x,y);
    disp(a);
end
    


