fprintf('LINSPACE\n');
x=input('Enter start value: ')
y=input ('Enter end value: ')

choice = menu('Generate n points? (default is 100)','yes', 'no');
if choice ==1
    n=input('Enter the value of n: ');
    b= linspace(x,y,n);
    disp(b);
    pause;
else
    a= linspace(x,y);
    disp(a);
end
    


