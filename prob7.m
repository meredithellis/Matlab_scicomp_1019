p=[1:999].';
q=[];
for k=1:999
    if floor(p(k)/3) == ceil(p(k)/3)
       q=[q p(k)];
    else
        if floor(p(k)/5) == ceil(p(k)/5)
           q=[q p(k)];
        end
    end
end 
sum(q)    