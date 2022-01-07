%3*(x)- cos(x)-1
%x^3-2*x^2-4

syms x;

y=input('Input: ');

a=input('');
b=input('');

fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));

if(fa*fb>0)
    disp('Unable to find root');
else
    c=(a*fb-b*fa)/(fb-fa);
    fc=eval(subs(y,x,c));
    
    fprintf('\n');
    fprintf('a\t\t\tb\t\t\tfa\t\t\tfb\t\t\tc\t\t\tfc');
    fprintf('\n');
    
    fprintf('\n');
    fprintf('%f\t\t%f\t\t%f\t\t%f\t\t%f\t\t%f',a,b,fa,fb,c,fc);
    fprintf('\n');
    
    lastC=c;
    
    while(1)
        if(fa*fc>=0)
            a=c;
        else
            b=c;
        end
        
        fprintf('\n');
        fprintf('%f\t\t%f\t\t%f\t\t%f\t\t%f\t\t%f',a,b,fa,fb,c,fc);
        fprintf('\n');
        
        if(round(lastC*1000)==round(c*1000))
            fprintf('Result: %f',c);
            break;
        else
            lastC=c;
        end
    end
end 