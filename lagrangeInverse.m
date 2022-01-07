n=4;
x=[5 6 9 11];
y=[12 13 14 16];
Y= 13.5;

res=0;

for i=1:n
    term=x(i);
    
    top=1;
    for j=1:n
        if(j==i)
        else
            top=top*(Y-y(j));
        end
    end
    
    bottom=1;
    for j=1:n
        if(j==i)
        else
            bottom=bottom*(y(i)-y(j));
        end
    end
    term=(term*top)/bottom;
    res=res+term;
end
fprintf('Result: %f\n',res);
