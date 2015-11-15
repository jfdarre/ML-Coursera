function [result, p, q] = biggestPalindrome2(n)
result = 0;
p = 0;
q = 0;

for i = 100:n-1
    for j = i:n-1
        if isPalindrome(i*j) && i*j > result
            result = i*j;
            p = i;
            q = j;
        end
    end
end

fprintf('The biggest palindrome found is %d\n', result)
fprintf('It is the product of %d and %d\n', p, q)

end