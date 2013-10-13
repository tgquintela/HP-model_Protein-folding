function init_pop = initialization(GenomeLength,FitnessFcn,options)



disp('initialization')
tic;
options.init_way='FE';

popsize = options.PopulationSize;
init_pop=zeros(popsize,GenomeLength);

switch options.init_way
    % Fully extended initialization
    case 'FE'
        init_pop=2*ones(popsize,GenomeLength);    
            
    % Random coils
    case 'RC'
        for k=1:popsize
            init_pop(k,:) = randconformation(GenomeLength);
        end
end


toc;
end
