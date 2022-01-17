A=[2 1 1;
   3 5 2;
   2 1 4]
   
   
B=[5;15;8]

[m,n]=size(A);

x=[0.5,1,0.5];
es=0.5*10^(-3);
ea=Inf;

for i=1:n
    sum=0;
    for j=1:n
        if j~=i
          sum=sum+abs(A(i,j));
        end
    end
    
    if(abs(A(i,i))<sum)
        fprintf('The matrix is not strictly diagonaly dominant at row %2i\n\n',i);
    end
end

itr=0;

while ea>es
    itr=itr+1;
    x_old=x;
    for i=1:n
        sum=0;
        for j=1:n
            if j~=i
              sum=sum+A(i,j)*x(j);
          end
      end
      x(i)=(B(i)-sum)/A(i,i);
  end
  ea=abs(((x-x_old)/x)*100);
end
  
  
disp(x)
disp(itr);
        