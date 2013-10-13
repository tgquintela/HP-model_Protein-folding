function randconfor = randconformation(GenomeLength,pre_conf,step,cruxes)
% Create a self-avoiding path a return it.
%%%%%%%%%%%%%%%%%
% Inputs:
% 	** GenomeLength:  the length of the conformation
% 	** pre_conf: 
% 	** step: vector 2d with the next position
% 	** cruxes: points with a cross
%%%%%%%%%%%%%%%%%
% Outputs:
% 	** randconfor: returns a valid randomconformation which is a self-avoiding path in 2d square grid 
%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com


%Input control
if nargin==1
    pre_conf(1,:) = zeros(1,2);
    step=[1 0];
    pre_conf(2,:) = pre_conf(1,:) + step;
    cruxes = zeros(2,1);
else
    if sum(cruxes)<0.5
        error('invalid previous conformation')
    end
end



% Ensure complete random coil
conf=pre_conf;
while length(conf)<GenomeLength
    
% First steps
valid=false;
plus=length(pre_conf);
conf=pre_conf;
randconfor=[];

    
for i=1:GenomeLength
    % control of validity and not stuck
    count=0;
    valid=false;
    while (~valid && count<10)
        
    % Assignation of direction 
    letter = randomletter(1);
    [node step_s] = nextnode(letter,conf(plus+i-1,:),step);
    
    % Control
    repet=false;
    for k=1:i+1
    if(isequal(conf(k,:),node))
        repet=true;
    end
    end
    if ~repet
        conf(plus+i,:)=node;
        step=step_s;
        randconfor=[randconfor letter];
        valid=true;
    else
        count=count+1;
        valid=false;
    end


    end
    % If not found valid option
    if ~valid
    break
    end
    
    end
    


    
    
end


end







