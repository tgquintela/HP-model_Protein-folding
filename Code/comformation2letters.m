function conformationletter = comformation2letters(a)
% Transform the representation of the conformation from numbers to letters
%%%%%%%%%%%%%%%%%
% Inputs:
%	** a:  array of integers ({1,2,3})
%%%%%%%%%%%%%%%%%
% Outputs:
%	** conformationletter: array of string ({'l','s','r'})
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com


conformationletter=[];

for i=1:length(a)
    if a(i)==1
        conformationletter=[conformationletter 'l'];
    elseif a(i)==2
        conformationletter=[conformationletter 's'];
    elseif a(i)==3
        conformationletter=[conformationletter 'r'];
    end


end
