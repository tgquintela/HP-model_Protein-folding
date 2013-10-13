function letters = randomletter(size)
% Return a random letter

%letters=zeros(1,size);
%support = rand(1,size);

letters = randi([1,3],1,size);
%letters = (support<1/3) + 2*(support >= 1/3 & support<2/3) + 3*(support >=2/3);

end