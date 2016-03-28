function[y,m]=dnsample(x,n,M) 
%Generate y(n)=dnsample x(n) 
%------------------------------------ 
%[y,n]=dnsample x(n) 
% 
m=[integer(n(1),M):integer(n(length(n)),M)]; 
y=zeros(size(m)); 
for i=min(m):max(m) 
   y(i-min(m)+1)=x(M*i-min(n)+1); 
end
