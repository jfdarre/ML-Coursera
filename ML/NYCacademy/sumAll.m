function total = sumAll(n,p,q)
total = (1/2) * ( p * floor(n/p) * (floor(n/p)+1) + q * floor(n/q) * (floor(n/q)+1) - p * q * floor(n/(p*q)) * (floor(n/(p*q))+1) );
end
