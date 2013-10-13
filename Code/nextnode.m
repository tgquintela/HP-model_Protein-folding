function [node step] = nextnode(direction,pre_pos,pre_step)
% Give the position of the next node. 
%%%%%%%%%%%%%%%%%
% Inputs:
% 	** direction: 
% 	** pre_pos: previous position
% 	** pre_step: previous step
%%%%%%%%%%%%%%%%%
% Outputs:
% 	** node: the position of the node
% 	** step: the step it has done.
%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com




 if direction == 2
 step=pre_step;

 elseif direction == 1
 step=pre_step*[0 1; -1 0];

 elseif direction == 3
 step=pre_step*[0 -1; 1 0];
 
 end
 node = pre_pos + step;



end
