fprintf('COLON NOTATION\n');
x=input('Enter start value: ')
y=input ('Enter end value: ')

choice = menu('Generate n points?','yes', 'no');
if choice ==1
    n=input('Enter the value of n: ');
    b= x:n:y;
    disp(b);
   
else
    a= x:y;
    disp(a);
end
    


