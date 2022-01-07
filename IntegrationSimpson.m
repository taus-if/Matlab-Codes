﻿@(x) sin(x);

low=0;
high=pi/2;
h=pi/8;
n=(high-low)/h;

for i=1:n+1
    y(i)=f(low+(i-1)*h);
end

I=0;
for i=2:2:n
    I=I+4*y(i);
end

for i=3:2:n-1
    I=I+2*y(i);
end

I=(h/3)*(y(1)+I+y(n+1));
disp(I);