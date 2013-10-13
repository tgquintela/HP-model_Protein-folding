function composition = generatecompo (number)


composition2=randi(2,1,number);
composition=[];
for i=1:number
    if composition2(i)==1
        composition=[composition 'H'];
    else
        composition=[composition 'P'];
    end
end



end