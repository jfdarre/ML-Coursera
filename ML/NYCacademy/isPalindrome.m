function result = isPalindrome(n)
result = true;
temp = [];

% store all digits of n in an array
while ( n != 0 )
    temp = [temp, rem(n, 10)];
    n = (n-rem(n,10))/10;
end

% check if ith digit is equal to (length(n)-i)th digit
for i = 1:length(temp)/2
    if temp(i) != temp(length(temp)-i+1)
        result = false;
end

end
