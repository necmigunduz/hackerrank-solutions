#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def pickingNumbers(a)
    ar = a.sort
    r = 0
    ar.each_with_index do |e,i|
        c=1
        i=i+1
        while i<ar.size && (ar[i] - e) <= 1
            c += 1
            c>r ? r=c : r=r
            i += 1
        end
    end
    r
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = pickingNumbers a

fptr.write result
fptr.write "\n"

fptr.close()
