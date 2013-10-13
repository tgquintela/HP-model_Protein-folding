function xoverKids  = crossover(parents,options,GenomeLength,FitnessFcn,thisScore,thisPopulation,ratio)



disp('crossover')
toc;
% Better are selected directly

% Ordering parents: Shuffle parents
dim=length(parents);
parents(randperm(dim));

% Number of kids?
nKids=dim/2;

% Allocate space for the kids
xoverKids = zeros(nKids,GenomeLength);

index=1;
for i=1:nKids
    % get parents
    parent1 = thisPopulation(parents(index),:);
    index = index + 1;
    parent2 = thisPopulation(parents(index),:);
    index = index + 1;
    
    % Initialize
    r=[parent1;parent2];
    valid=false;
    
    % Find valid crossover
    while ~valid
    % cut point is AFTER this index.
    xOverPoint = randi([2,GenomeLength-1],1,1);
    r=r(randperm(2),:);
    fold=randperm(3);
    
    % Probar valores de fold
    % control=false;
    for k=1:3
        kidcandidate = [r(1,1:xOverPoint-1) fold(k) r(2,xOverPoint+1:GenomeLength)];
        valid=valid_configuration(kidcandidate);
        if valid && acceptance(r,kidcandidate,1,'crossover')
            break;
        end
    end
        
    end
    
    xoverKids(i,:)=kidcandidate;
end

toc;
end