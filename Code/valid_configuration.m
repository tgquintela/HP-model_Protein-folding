function valid = valid_configuration(conformation)
% Return a boolean (value). If selfavoiding it will be true. 
%%%%%%%%%%%%%%%%%
% Inputs:
%	** conformation: an array of numbers {1,2,3} describing the conformation of the protein
%%%%%%%%%%%%%%%%%
% Outputs:
%	** valid: Boolean which describes if the conformation is self-avoiding path
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com


[chain_pos,cruxes] = filling_space(conformation);

% 0.5 is a margin to avoid problem in the cases of quasi integer.
valid= (sum(cruxes)< 0.5);


end
