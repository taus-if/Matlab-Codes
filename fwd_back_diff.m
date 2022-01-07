x=[1 2 3 4 5];
y=[2 5 9 12 20];

syms pp;
X=4;
h=x(2)-x(1);

idx=find(x==X);
len=length(y);

if(idx<len/2)
    p=(X-x(1))/h;
    
    range=len-idx;
    temp_y=y(idx:len);
    del_y=zeros(1,range);
    
    for i=1:range
        %diff(temp_y,i);
        del_y(i)=diff(temp_y,i)(1);
    end
    
    prod=1;
    s1=0;
    s2=0;
    
    for i=1:range
        prod=prod*(pp-(i-1));
        diff1=diff(prod);
        diff2=diff(diff1);
        
        term1=del_y(i)*diff1/factorial(i);
        term2=del_y(i)*diff2/factorial(i);
        
        val1=vpa(subs(term1,pp,p),4);
        val2=vpa(subs(term2,pp,p),4);
        
        s1=s1+val1;
        s2=s2+val2;
    end
    res1=s1/h;
    res2=s2/(h*h);
    
    disp(res1);
    disp(res2);
    
else
    p=(X-x(idx))/h;
    range=idx-1;
    temp_y=y(1:idx);
    del_y=zeros(1,range);
    
    for i=1:range
        %diff(temp_y,i);
        del_y(i)=diff(temp_y,i)(idx-i);
    end
    
    prod=1;
    s1=0;
    s2=0;
    
    for i=1:range
        prod=prod*(pp+(i-1));
        diff1=diff(prod);
        diff2=diff(diff1);
        
        term1=(del_y(i)*diff1)/factorial(i);
        term2=(del_y(i)*diff2)/factorial(i);
        
        val1=vpa(subs(term1,pp,p),4);
        val2=vpa(subs(term2,pp,p),4);
        
        s1=s1+val1;
        s2=s2+val2;
    end
    res1=s1/h;
    res2=s2/(h*h);
    
    disp(res1);
    disp(res2);
    
end


