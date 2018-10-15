function f= myDec2Bin(x)
f=0;
k=0;
while x >1
    if mod(x,2) == 1
        f=f+1*10^k;
        x= (x-1)/2;
    else
        x=x/2;
    end
    k=k+1;
end

