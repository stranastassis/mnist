function logPr = logBernoulli2(X, mu)
mu(mu<=0) = 1e-100;
mu(mu>=1) = 1 - 1e-100;
%A=bsxfun(@plus,bsxfun(@times,1-X,log(1-mu)),logmu);
%logPr=sum(bsxfun(@times,X,bsxfun(@plus,bsxfun(@times,log(1-mu),1-X),log(mu))),2);
% A=bsxfun(@times,1-X,log(1-mu));
% B=bsxfun(@times,X,log(mu));
logPr=sum(bsxfun(@times,1-X,log(1-mu))+bsxfun(@times,X,log(mu)),2);
end

