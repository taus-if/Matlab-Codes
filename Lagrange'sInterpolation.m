n=4;
x=[5 6 9 11];
y=[12 13 14 16];
X= 10;

res=0;

for i=1:n
    term=y(i);
    
    top=1;
    for j=1:n
        if(j==i)
        else
            top=top*(X-x(j));
        end
    end
    
    bottom=1;
    for j=1:n
        if(j==i)
        else
            bottom=bottom*(x(i)-x(j));
        end
    end
    term=(term*top)/bottom;
    res=res+term;
end
fprintf('Result: %f\n',res);
