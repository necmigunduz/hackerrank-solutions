#!/bin/ruby

require 'json'
require 'stringio'

# Complete the equalizeArray function below.
def equalizeArray(arr)
    hash = Hash.new(0)
    arr.each{|key| hash[key] += 1}
    
    arr.length - hash.values.max 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = equalizeArray arr

fptr.write result
fptr.write "\n"

fptr.close()
