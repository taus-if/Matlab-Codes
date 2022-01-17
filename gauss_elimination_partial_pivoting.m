a=[0.1 7 -0.3;
3 -0.1 -0.2;
0.3 -0.2 10]
b=[-19.3; 7.85; 71.4]

n=length(a);

for k=1:n-1
    for p=k+1:n
        if(abs(a(k,k))<abs(a(p,k)))
            a([k p],:)=a([p k],:);
            b([k p])=b([p k]);
        end
    end
    for i=k+1:n
        factor=a(i,k)/a(k,k);
        for j=k+1:n
            a(i,j)=a(i,j)-factor*a(k,j);
        end
        b(i)=b(i)-factor*b(k);
    end
end

x(n)=b(n)/a(n,n);
for i=n-1:-1:1
    sum=b(i);
    for j=i+1:n
        sum=sum-a(i,j)*x(j);
    end
    x(i)=sum/a(i,i);
end

x