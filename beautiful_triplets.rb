#!/bin/ruby

require 'json'
require 'stringio'

# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr)
    count = 0
    
    arr.each do |i|
        count += 1 if arr.include?(i+d) && arr.include?(i+d+d) 
    end
    
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = beautifulTriplets d, arr

fptr.write result
fptr.write "\n"

fptr.close()
