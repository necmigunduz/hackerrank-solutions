#!/bin/ruby

require 'json'
require 'stringio'

# Complete the chocolateFeast function below.
def chocolateFeast(n, c, m)
    answer = 0
    purchase = n / c 
    answer += purchase
    free = purchase / m
    
    while  free > 0 do
        answer += free
        wrappers = free * m
        purchase -= wrappers
        purchase += free
        free = purchase / m
    end
    answer
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    ncm = gets.rstrip.split

    n = ncm[0].to_i

    c = ncm[1].to_i

    m = ncm[2].to_i

    result = chocolateFeast n, c, m

    fptr.write result
    fptr.write "\n"
end

fptr.close()

