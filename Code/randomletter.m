function letters = randomletter(size)
% Return an array of random 'letters'. Returns an array of integers {1,2,3}
%%%%%%%%%%%%%%%%%
% Inputs:
%	** size: number of length of the array of output 
%%%%%%%%%%%%%%%%%
% Outputs:
%	** letters: Returns an array of integers {1,2,3}
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com



%letters=zeros(1,size);
%support = rand(1,size);

letters = randi([1,3],1,size);
%letters = (support<1/3) + 2*(support >= 1/3 & support<2/3) + 3*(support >=2/3);

end
