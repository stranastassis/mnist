function [ Pr ] = mixBernoulli( X,m,pi )
C=bsxfun(@times,bsxfun(@power,m,X),bsxfun(@power,1-m,1-X));
C=prod(C,2);
C=bsxfun(@times,pi,C);
Pr=sum(C);
end

