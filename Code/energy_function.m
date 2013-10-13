function Energia = energy_function(composition,conformation)
% Evaluate the energy of a protein conformation. It is suposed a valid conformation
%%%%%%%%%%%%%%%%%
% Inputs:
%	** composition: an array of string {H,P} describing the composition of each aminoacid
%	** conformation: an array of numbers {1,2,3} describing the conformation of the protein
%%%%%%%%%%%%%%%%%
% Outputs:
%	** Energia: Return the Energy of the protein conformation
%%%%%%%%%%%%%%%%%
% Author: 'Toño G. Quintela' tgq.spm@gmail.com



% Filling the square space
chain_pos = filling_space(conformation);


% Calculating the energy
n=length(composition);
Energia=0;


%for each element in chain
for i=1:n
if composition(i)=='H'
   % each possible directions
   for j=0:3
     theta=pi/2*j;
     %matrix rotation elements
     rot1=round(cos(theta));
     rot2=round(sin(theta));
     rot3=round(-sin(theta));
     rot4=round(cos(theta));
     ROT=[rot1 rot2;rot3 rot4];
     sup=chain_pos(i,:) + [0 1]*ROT;
     
     % List of neigthbors.
     for k=1:length(chain_pos)
         sup2(k)=isequal(sup,chain_pos(k,:));
     end
     
     % Search the 1
     [x idx]=max(sup2);
     
          
     % Sum energy
     if (x==1 && composition(idx)=='H' && idx~=i+1 && idx~=i-1)
         Energia=Energia-1;
     end
   end
end
     

   
end 


%Energy has added two times. Symmetric link.   
Energia=Energia/2;





end
