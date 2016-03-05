function [ m,pi ] = EM( x,K )
    oldLik=-inf;
    counter = 0;
	%Arxikopoihse to pi
    pi=ones(K,1)/K; 
    D=size(x,2);
	%m tuxaia arxikopoihsh meta3u 0.4 -0.6
    m=0.4*rand(K,D)+0.2; 
    N=size(x,1);
    gama=zeros(N,K);
    f=zeros(N,K);
    %checkare an sugklinoume
    % na upologizoume to L autou tou vimatos
    while (counter <= 500)
		% E STEP
       % for n=1:N
            for k=1:K
               % f(1,k)=log(pi(k))+x(n,:)*log(m(k,:))+(1-x(n,:))*log(1-m(k,:));
              %  f(1,k)=log(pi(k))+logBernoulli(x(n,:),m(k,:));
              f(:,k)=log(pi(k))+logBernoulli2(x,m(k,:));
          %  f=log(pi)+logBernoulli(x,m);
            end
         %  maxi=max(f);
            maxi=max(f,[],2);
           %gama(n,:)=exp(f(1,:)-maxi)/sum(exp(f(1,:)-maxi));
           %mean = sum(gama,2)
           templik=bsxfun(@plus,maxi,(log(sum(exp(bsxfun(@minus,f,maxi)),2))));
          % templik=bsxfun(@plus,maxi,(sum(exp(bsxfun(@minus,f,maxi)),2)));
           newLik=sum(templik);
           gama = bsxfun(@rdivide,exp(bsxfun(@minus,f,maxi)),(sum(exp(bsxfun(@minus,f,maxi)),2)));
      %  end
		% M STEP
		%----------------------------
		% Compute m
	%	for k = 1:K
		%	for d = 1:D
		%		m(k,d) = (sum(gama(:,k).*x(:,d)))/(sum(gama(:,k)));
         %   m(k,:) = (sum(gama(:,k).*x))/(sum(gama(:,k)));
         m=bsxfun(@rdivide,gama'*x,sum(gama)');
		%	end
    %    end
        m(m<1e-6)=1e-6;
        m(m>1-1e-6)=1-1e-6;
		%----------------------------
		% Compute pi
	%	for k = 1:K
		%	pi(k) = sum(gama(:,k)) / N;
                pi = (sum(gama) / N)';
	%	end
        %-----------------------------------------------------------------
        %Nea pithano8aneia xrisimopoiontas ta nea m kai pi!!!!
%         tempLik=0;
%         for n=1:N
%             for k=1:K
%                  f(1,k)=log( (k))+logBernoulli(x(n,:),m(k,:));
%             end
%             maxi=max(f);
%               tempLik= tempLik+maxi+log(sum(exp(f(1,:)-maxi)));
%         end
%         newLik=tempLik
        if(abs(newLik-oldLik)<1e-6)
            break;
        end
        oldLik=newLik;
%         
         counter = counter + 1;
        
    end 
end


