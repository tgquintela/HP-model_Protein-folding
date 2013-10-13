function  energy = Fitnessfunction(conformation)
% Handle in which we introduce the composition and it returns the energy of some conformation.
%%%%%%%%%%%%%%%%%
% Inputs:
%	** conformation: an array of numbers {1,2,3} describing the conformation of the protein
%%%%%%%%%%%%%%%%%
% Outputs:
%	** Energia: Return the Energy of the protein conformation
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com

% Pruebas:
%OJO: 24
%composition='HPHHPHPHPHPHHHPHPHHHHHPHPH';
%composition='HHHHHHHHHHHHPHPHPPHHPPHHPPHPPHHPPHHPPHPPHHPPHHPPHPHPHHHHHHHHHHHH';
%composition='HHHHHHHHHHHHPHPHPPHHPPHHPPHPPHHPPHPPHHPPHHPPHHH';
composition='HHHHHHHPPHHPPHPPHHPHPPHH'; -13;
%composition='HHHHH'

energy=energy_function(composition,conformation);




end
