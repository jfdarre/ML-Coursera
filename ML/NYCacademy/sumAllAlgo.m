function total = sumAllAlgo(n,p,q)
total = 0;
for i = 1:n
    if ~(rem(i,p)*rem(i,q))
        total += i;
    end
end
end