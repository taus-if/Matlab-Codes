a=[2 1 4 12
8 -3 2 20
4 11 -1 33]
 
[r c]=size(a);

for i=1:r-1
    for j=i+1:r
        if(a(i,i)<a(j,i))
            temp=a(j,:);
            a(j,:)=a(i,:);
            a(i,:)=temp;
        end
    end
    
    a(i,:)=a(i,:)/a(i,i);
    
    for k=i+1:r
        m=a(k,i)/a(i,i);
        for t=1:c
            a(k,t)=a(k,t)-a(i,t)*m;
        end
    end
end

for i=r:-1:2
    for j=i-1:-1:1
        n=a(j,i)/a(i,i);
        for t=1:c
            a(j,t)=a(j,t)-a(i,t)*n;
        end
    end
end

a(r,:)=a(r,:)/a(r,r);

a(:,4)