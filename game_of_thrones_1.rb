#!/bin/ruby

require 'json'
require 'stringio'

# Complete the gameOfThrones function below.
def gameOfThrones(s)
    words = s.split('')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 }
    odd = 0
    even = 0
    frequency.each do |k,v|
        if v.even?
            even += 1
        else 
            odd += 1
        end
    end
    if odd > 1
        "NO"
    else 
        "YES"
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

result = gameOfThrones s

fptr.write result
fptr.write "\n"

fptr.close()

