#!/bin/ruby

require 'json'
require 'stringio'

# Complete the divisibleSumPairs function below.
def divisibleSumPairs(n, k, ar)   
    count = 0
   
    for a in 0..(n-2) do
        for j in (a+1)..(n-1) do
            count += 1 if ((ar[a] + ar[j]) % k == 0)
        end
    end
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = divisibleSumPairs n, k, ar

fptr.write result
fptr.write "\n"

fptr.close()

