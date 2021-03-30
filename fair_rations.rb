#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'fairRations' function below.
#
# The function is expected to return a STRING.
# The function accepts INTEGER_ARRAY B as parameter.
#

def fairRations(b)
    c=0
    for i in 0...b.length
        if b[i] % 2 != 0
            b[i]+=1
            b[i+1]+=1 if i+1<b.length
            c += 2
            return "NO" if i+1>=b.length
            i=0
        else
            i+=1
        end
    end
    c
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

N = gets.strip.to_i

b = gets.rstrip.split.map(&:to_i)

result = fairRations b

fptr.write result
fptr.write "\n"

fptr.close()

