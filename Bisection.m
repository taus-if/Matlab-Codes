%3*(x)-cos(x)-1
%x^3-2*x^2-4

syms x;
y=input('Enter the equation: ');

a=input('a: ');
b=input('b: ');

fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));

if(fa*fb>0)
    disp('Unable to find root');
else
    c=(a+b)/2;
    fc=eval(subs(y,x,c));
    lastC=c;
    fprintf('a\t\t\tb\t\t\tfa\t\t\tfb\t\t\tc\t\t\tfc\n');
    fprintf('%f\t\t\t%f\t\t\t%f\t\t\t%f\t\t\t%f\t\t\t%f\n',a,b,fa,fb,c,fc);
    
    while(1)
        if(fa*fc>=0)
            a=lastC;
        else
            b=lastC;
        end
        fa=eval(subs(y,x,a));
        fb=eval(subs(y,x,b));
        
        c=(a+b)/2;
        fc=eval(subs(y,x,c));
        fprintf('%f\t\t\t%f\t\t\t%f\t\t\t%f\t\t\t%f\t\t\t%f\n',a,b,fa,fb,c,fc);
        
        if(round(lastC*100)==round(c*100))
            fprintf('\nThe root is %f\n',c);
            break;
        else
            lastC=c;
        end
    end
end

        