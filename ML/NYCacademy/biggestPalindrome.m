function [result, p, q] = biggestPalindrome(n)
result = 0;
p = 0;
q = 0;

while( result == 0 )
currentPalindrome = makePalindrome(n);
    for ( p = [999 : -1 : sqrt(currentPalindrome)] )
        if rem(currentPalindrome, p) == 0;
            result = currentPalindrome;
            q = result / p;
            break;
        end
    end
n -= 1;
end

fprintf('The biggest palindrome found is %d\n', result)
fprintf('It is the product of %d and %d\n', p, q)

end