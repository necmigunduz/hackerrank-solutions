#!/bin/ruby

require 'json'
require 'stringio'

# Complete the findMedian function below.
def findMedian(arr)
    sorted_arr = arr.sort
    len = arr.length
    median_ind = (len/2).ceil
    sorted_arr[median_ind]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = findMedian arr

fptr.write result
fptr.write "\n"

fptr.close()

