function [x,fval,exitflag,output,population,score] = problemsolver(nvars)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'PopulationType', 'custom');
options = gaoptimset(options,'CreationFcn', @initialization);
options = gaoptimset(options,'CrossoverFcn', @crossover);
options = gaoptimset(options,'MutationFcn', @mutation);
options = gaoptimset(options,'Display', 'off');
options = gaoptimset(options,'PlotFcns', {  @gaplotbestf @gaplotdistance });
[x,fval,exitflag,output,population,score] = ...
ga(@Fitnessfunction,nvars,[],[],[],[],[],[],[],[],options);
