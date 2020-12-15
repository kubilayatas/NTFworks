function [A,B,C,U,V,E]=mvntfTV(X,A,B,C,lambda,mu,R,L)
% x: the HSI in IJK where the I J K denote the width height and band number
% R: the number of endmembers
% L: Rank of each abudance map
% A:initialization of A
% B: initial value of B
% C: initial value of C

X1=tens2mat(X,1);  % X1 is IxJK
X2=tens2mat(X,2);  % X2 is JxIK (or smaller dimensions if compression was done)
X3=tens2mat(X,3);  % X3 is KxJI (idem)
[I,J,K]=size(X);
L_vec=ones(1,R)*L;
indU=[0 cumsum(L_vec)]; 
indV=[0 cumsum(L_vec)];
objNew=0.5*norm(X1-A*myKr(C,B,ones(1,R),ones(1,R)*L)','fro');
E=cell(1,R);
% E_Lidar = cell(1,R);
U=A;
V=B;
for r=1:R
    Ar=A(:,indU(r)+1:indU(r+1));
    Br=B(:,indV(r)+1:indV(r+1));
    E{r}=Ar*Br';
end
param2.verbose=1;
param2.max_iter=20;
param2.verbose = 0;
delta=0.4;
while 1
    objOld=objNew;
    %%%%%%update A
    M=myKr(C,B,ones(1,R),ones(1,R)*L); %        ./    
    A=A.*(X1*M+mu*U+delta*ones(I,J)*B)./(A*M'*M+mu*A+delta*A*B'*B+1e-4);
    %%%%%%update B
    M=myKr(C,A,ones(1,R),ones(1,R)*L); %       ./    
    B=B.*(X2*M+mu*V+delta*ones(J,I)*A)./(B*M'*M+mu*B+delta*B*A'*A+1e-4);    
    temp=0;
    %%%%%%update U and V
    for r=1:R
        Ur=U(:,indU(r)+1:indU(r+1));
        Vr=V(:,indV(r)+1:indV(r+1));
        Ar=A(:,indU(r)+1:indU(r+1));
        Br=B(:,indV(r)+1:indV(r+1));
        Ur=Ur.*(E{r}*Vr+Ar)./(Ur*Vr'*Vr+Ur+1e-4);
        Vr=Vr.*(E{r}'*Ur+Br)./(Vr*Ur'*Ur+Vr+1e-4);
        U(:,indU(r)+1:indU(r+1))=Ur;
        V(:,indU(r)+1:indU(r+1))=Vr;
            [E{r},obj]= prox_TV((Ur*Vr'),lambda/mu,param2);
%              [E{r},obj]= prox_TV((Ur*Vr'),lambda/mu,param2);
        temp=temp+TV_norm(E{r});
    end
    
    M=myKr2(A,B,ones(1,R)*L,ones(1,R)*L);
    %%%%%%update C

    C=C.*((X3*M)./(C*M'*M+1e-4));
    objNew=0.5*norm(X1-A*myKr(C,B,ones(1,R),ones(1,R)*L)','fro')+mu*(norm(A-U,'fro')+norm(B-V,'fro'))+temp;
    tol=abs(objNew-objOld)/objOld;
    if(tol<1e-4)
        break;
    end
    fprintf(strcat(num2str(objNew),'\t',num2str(tol),'\n'));
 
end

end



