function  energy = Fitnessfunction(conformation)
% Handle in which we introduce the composition.
% It returns the energy of some conformation.

%OJO: 24
%composition='HPHHPHPHPHPHHHPHPHHHHHPHPH';

%composition='HHHHHHHHHHHHPHPHPPHHPPHHPPHPPHHPPHHPPHPPHHPPHHPPHPHPHHHHHHHHHHHH';

%composition='HHHHHHHHHHHHPHPHPPHHPPHHPPHPPHHPPHPPHHPPHHPPHHH';

composition='HHHHHHHPPHHPPHPPHHPHPPHH'; -13;

%composition='HHHHH'
energy=energy_function(composition,conformation);




end