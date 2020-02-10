d=[];
a=[];

for i=1:16,
    d(i)=-2;
end

for i=1:15,
    a(i)=1
end

c=[1]
D= diag(d) + diag(a,1) +diag(a,-1) + diag(c,15) +diag(c,-15)