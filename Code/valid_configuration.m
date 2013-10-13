function valid = valid_configuration(conformation)
% Return a boolean (value). If selfavoiding it will be true. 


[chain_pos,cruxes] = filling_space(conformation);

% 0.5 is a margin to avoid problem in the cases of quasi integer.
valid= (sum(cruxes)< 0.5);


end