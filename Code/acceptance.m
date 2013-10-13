function accepted = acceptance(initial_confor,final_confor,param,way)
% Decide if it accepts changes in the conformation or not.
%%%%%%%%%%%%%%%%%
% Inputs:
%	** initial_confor: 
%	** final_confor: 
%	** param:
%	** way: 
%%%%%%%%%%%%%%%%%
% Outputs:
%	accepted: boolean value. Decide if it will be accepted
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com


final_e = Fitnessfunction(final_confor);

switch (way)
    case 'mutation'
        initial_e = Fitnessfunction(initial_confor); 
    case 'crossover'
        initial_e = 1/2*(Fitnessfunction(initial_confor(1,:)) + Fitnessfunction(initial_confor(2,:)));
end



delta=final_e-initial_e;

if delta<0
    accepted = true;
else
    delta2=exp(-delta/param);
    threshold=rand(1);
    
    if threshold < delta2
        accepted = true;
    else
        accepted =false;
    end
end

end
