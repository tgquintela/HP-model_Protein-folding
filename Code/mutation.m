function mutationChildren = mutation(parents,options,GenomeLength,FitnessFcn,state,thisScore,thisPopulation,mutationRate)
% Return mutations. Give the mutation operator for the conformations
%%%%%%%%%%%%%%%%%
% Inputs:
%	** parents: collection of conformation; the parents of the crossover
%	** options: configuration options 
%	** GenomeLength:  the length of the conformation
%	** FitnessFcn
%	** thisScore
%	** thisPopulation
%	** ratio 
%%%%%%%%%%%%%%%%%
% Outputs:
%	** mutationChildren: return the collection of children of the operator mutation
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com





disp('mutation');
toc;
mutationRate=2/length(parents);

mutationChildren = zeros(length(parents),GenomeLength);

for i=1:length(parents)
    child = thisPopulation(parents(i),:);
    valid=false;
    % Mutation:
    while ~valid
    mutationPoints = find(rand(1,length(child)) < mutationRate);
    child(mutationPoints) = randomletter(length(mutationPoints));
    if valid_configuration(child) && acceptance(thisPopulation(parents(i),:),child,1,'mutation')
        mutationChildren(i,:) = child;
        valid=true;
    end
    end
 
    toc;
end
