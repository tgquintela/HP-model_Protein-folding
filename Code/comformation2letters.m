function conformationletter = comformation2letters(a)


conformationletter=[];

for i=1:length(a)
    if a(i)==1
        conformationletter=[conformationletter 'l'];
    elseif a(i)==2
        conformationletter=[conformationletter 's'];
    elseif a(i)==3
        conformationletter=[conformationletter 'r'];
    end


end
