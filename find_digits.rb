#!/bin/ruby

require 'json'
require 'stringio'

# Complete the findDigits function below.
def findDigits(n)
    n = n.to_s
    result = 0
    n.split("").each do |c|
        c_num = c.to_i
        result +=1 if c_num > 0 && n.to_i % c_num == 0
    end
    result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = findDigits n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
