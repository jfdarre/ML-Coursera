function result = makePalindrome(n)
result = 0;
temp = [];

% store all digits of n in an array
while ( n != 0 )
    temp = [temp, rem(n, 10)];
    n = (n-rem(n,10))/10;
end

% create the palindrome
for i = 0:length(temp)-1
    result += temp(length(temp)-i)*(10^(i)+10^(2*length(temp)-i-1));
end

end
