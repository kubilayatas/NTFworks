function [Waid,Wtol] = Wd(X, p, q)
N = p*q; alpha = 1;
Waid = sparse(N,N);
%============the four corner pixels========
%the left corner
i = 1;  j = 2;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);
j = p+1;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);

%the left bottom corner
i = p;  j = p-1;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);
j = 2*p;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);

%the right top corner
i = p*(q-1)+1;  j = p*(q-2)+1;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);
j = p*(q-1)+2;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);

%the right bottom corner
i = p*q;  j = i-1;
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);
j = p*(q-1);
beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
beta = abs(beta);
Waid(j,i)=Wget(alpha,beta);

%=========the four borders===================
%the left border
for i=2:p-1
    j=i-1;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j=i+1;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j=p+i;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    Waid(j,i)=Wget(alpha,beta);
end
%the top border
for i=p+1:p:p*(q-2)+1
    j=i-p;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j=i+p;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    Waid(j,i)=Wget(alpha,beta);
    j=i+1;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
end
%the bottom border
for i=2*p:p:p*(q-1)
    j=i-p;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j=i-1;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j=i+p;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
end
%the right border
for i=(p*(q-1)+2):1:(p*q-1)
    j = i-1;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j = i+1;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
    j=i-p;
    beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
    beta = abs(beta);
    Waid(j,i)=Wget(alpha,beta);
end

%======the middle pixels====================
for m=2:p-1;
    for n=2:q-1;
        i = (n-1)*p+m;
        j = i-1;
        beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
        beta = abs(beta);
        Waid(j,i)=Wget(alpha,beta);
        j = i+1;
        beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
        beta = abs(beta);
        Waid(j,i)=Wget(alpha,beta);
        j = i-p;
        beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
        beta = abs(beta);
        Waid(j,i)=Wget(alpha,beta);
        j = i+p;
        beta = acos(sum(X(:,i).*X(:,j))./sqrt(sum(X(:,i).^2)*sum(X(:,j).^2)));
        beta = abs(beta);
        Waid(j,i)= Wget(alpha,beta);
    end
end
Wtol = sum(Waid);
%Waid = Waid./repmat(Wtol,N,1);

%==========================================================================
function weight = Wget(alpha,beta)
weight = 1./sqrt(alpha+beta);












