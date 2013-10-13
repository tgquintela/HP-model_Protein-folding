function [chain_pos,cruxes] = filling_space(conformation)
% Plot the chain over a 2D map and find the degenerate points
%INPUTS
% conformation: chain of characters : {1,2,3} = {'l','r','s'}
%
% OUTPUT
% chain_pos: integer matrix 2D
% cruxes: integer vector indicating what elements of the chain produces
% degeneration


%initialization
n=length(conformation) + 2;
init=3;
chain_pos = zeros(n,2);
step=[1 0];
chain_pos(2,:)= chain_pos(1,:) + step;
cruxes = zeros(2,1);


% Filling
for i=init:n
[chain_pos(i,:) step] = nextnode(conformation(i-2),chain_pos(i-1,:),step);
   
% Finding degenerate points
 cruxes(i)=0;
 for k=1:i-1
    if(isequal(chain_pos(k,:),chain_pos(i,:)))
       cruxes(i)=1;
    end
 end
 
end

end