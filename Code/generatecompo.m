function composition = generatecompo (number)
% Generate a composition given an array of the different two tipes of aminoacid
%%%%%%%%%%%%%%%%%
% Inputs:
%	** number: length of the protein; number of aminoacids
%%%%%%%%%%%%%%%%%
% Outputs:
%	** composition: an array of string {H,P} describing the composition of each aminoacid
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com

composition2=randi(2,1,number);
composition=[];
for i=1:number
    if composition2(i)==1
        composition=[composition 'H'];
    else
        composition=[composition 'P'];
    end
end



end
